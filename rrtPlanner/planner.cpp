#include "RRTbase.h"
#include "RRTbase.cpp"
#include "RRTstar.h"
#include "RRTstar.cpp"
#include <math.h>
#include <time.h>
#include <random>
#include "mex.h"

using namespace std;

/* Input Arguments */
#define	MAP_IN      prhs[0]
#define	START_POSE	prhs[1]
#define	GOAL_POSE     prhs[2]
#define	PLANNER_ID_IN     prhs[3]

/* Planner Ids */
#define RRTBASE         0
#define RRTCONNECT  1
#define RRTSTAR     2
#define PRM         3

/* Output Arguments */
#define	PLAN_OUT	plhs[0]
#define	PLANLENGTH_OUT	plhs[1]

#if !defined(MAX)
#define	MAX(A, B)	((A) > (B) ? (A) : (B))
#endif

#if !defined(MIN)
#define	MIN(A, B)	((A) < (B) ? (A) : (B))
#endif

#define PI 3.141592654

static void plannerRRT(double* map, int x_size, int y_size, int z_size, 
                        double* start_pose, double* goal_pose, 
                        vector<vector<int>>* plan, int* planlength) {
    
    cout << "RRT ------------------------" << endl;
    int starttime = clock();
    static RRT rrt(map, x_size, y_size, z_size, start_pose, goal_pose);
    plan = rrt.RunRRT();
    *planlength = rrt.planlength;
    int endtime = clock();
    float RRTtime = float(endtime - starttime) / float(CLOCKS_PER_SEC);
    cout << "RRT Time: " << RRTtime << " sec" << endl; 

    return;
}

static void plannerRRTstar(double* map, int x_size, int y_size, int z_size,
                            double* start_pose, double* goal_pose, 
                            vector<vector<int>>* plan, int* planlength) {
    
    cout << "RRT Star ------------------------" << endl;
    int starttime = clock();
    static RRTstar rrtstar(map, x_size, y_size, z_size, start_pose, goal_pose);
    plan = rrtstar.RunRRT();
    *planlength = rrtstar.planlength;
    int endtime = clock();
    float RRTstartime = float(endtime - starttime) / float(CLOCKS_PER_SEC);
    cout << "RRTstar Time: " << RRTstartime << " sec" << endl; 

    return;                   
}

void mexFunction( int nlhs, mxArray *plhs[], 
		  int nrhs, const mxArray*prhs[])
{ 
    
    /* Check for proper number of arguments */    
    if (nrhs != 4) { // CHANGE BACK TO 4 LATER
	    mexErrMsgIdAndTxt( "MATLAB:planner:invalidNumInputs",
                "Four input arguments required."); 
    } else if (nlhs != 2) {
	    mexErrMsgIdAndTxt( "MATLAB:planner:maxlhs",
                "Two output arguments required."); 
    } 
        
    /* get the dimensions of the map and the map matrix itself*/
    auto dims_ptr = mxGetDimensions(MAP_IN);  
    int sizes[3];
    for (int dim = 0; dim < 3; dim++) {
        sizes[dim] = *dims_ptr;
        dims_ptr ++;
    }
    int x_size = (int) sizes[0];
    int y_size = (int) sizes[1];
    int z_size = (int) sizes[2];   
    // int x_size = (int) mxGetM(MAP_IN);
    // int y_size = (int) mxGetN(MAP_IN);
    double* map = mxGetPr(MAP_IN);
    
    /* get the start and goal angles*/     
    int numofDOFs = (int) (MAX(mxGetM(START_POSE), mxGetN(START_POSE)));
    if(numofDOFs <= 1){
	    mexErrMsgIdAndTxt( "MATLAB:planner:invalidnumofdofs",
                "it should be at least 2");         
    }
    double* start_pose = mxGetPr(START_POSE);
    if (numofDOFs != MAX(mxGetM(GOAL_POSE), mxGetN(GOAL_POSE))){
        	    mexErrMsgIdAndTxt( "MATLAB:planner:invalidnumofdofs",
                "numofDOFs in startangles is different from goalangles");         
    }
    double* goal_pose = mxGetPr(GOAL_POSE);
 
    //get the planner id
    int planner_id = (int)*mxGetPr(PLANNER_ID_IN);
    if(planner_id < 0 || planner_id > 3){
	    mexErrMsgIdAndTxt( "MATLAB:planner:invalidplanner_id",
                "planner id should be between 0 and 3 inclusive");         
    }
    
    //call the planner
    vector<vector<int>>* plan = NULL;
    int planlength = 0;
    
    //call the corresponding planner function 
    if (planner_id == RRTBASE)
    {
       plannerRRT(map, x_size, y_size, z_size, start_pose, goal_pose, plan, &planlength);
    }
    else if (planner_id == RRTSTAR) {
        plannerRRTstar(map, x_size, y_size, z_size, start_pose, goal_pose, plan, &planlength);
    }
    
    printf("planner returned plan of length=%d\n", planlength); 
    
    /* Create return values */
    if(planlength > 0)
    {
        PLAN_OUT = mxCreateNumericMatrix( (mwSize)planlength, (mwSize)numofDOFs, mxDOUBLE_CLASS, mxREAL); 
        double* plan_out = mxGetPr(PLAN_OUT);        
        //copy the values
        int i,j;
        for(i = 0; i < planlength; i++)
        {
            for (j = 0; j < numofDOFs; j++)
            {
                plan_out[j*planlength + i] = (double) (*plan)[i][j];
            }
        }
    }
    else
    {
        PLAN_OUT = mxCreateNumericMatrix( (mwSize)1, (mwSize)numofDOFs, mxDOUBLE_CLASS, mxREAL); 
        double* plan_out = mxGetPr(PLAN_OUT);
        //copy the values
        int j;
        for(j = 0; j < numofDOFs; j++)
        {
                plan_out[j] = (double) start_pose[j];
        }     
    }
    
    PLANLENGTH_OUT = mxCreateNumericMatrix( (mwSize)1, (mwSize)1, mxINT8_CLASS, mxREAL); 
    int* planlength_out = (int*) mxGetPr(PLANLENGTH_OUT);
    *planlength_out = planlength;
    
    return;
}