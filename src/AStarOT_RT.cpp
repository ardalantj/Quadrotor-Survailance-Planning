#include<iostream>
#include<algorithm>
#include<utility>
#include <vector>
#include <queue>
#include <map>
#include <cstdlib>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>
#include <ros/ros.h>
#include <octomap/octomap.h>
#include <fstream>
#include <istream>
#include <list>
#include <octomap/ColorOcTree.h>
#include <octomap/OcTree.h>
#include <octomap/OcTreeBase.h>
#include <octomap/AbstractOcTree.h>
#include <octomap/OcTreeIterator.hxx>
#include <octomap/AbstractOccupancyOcTree.h>
#include <time.h>
#include <fstream>
#include <Eigen/Geometry>
#include <mav_msgs/conversions.h>
#include <mav_msgs/default_topics.h>
#include <mav_msgs/eigen_mav_msgs.h>
#include <sensor_msgs/Imu.h>
#include <trajectory_msgs/MultiDOFJointTrajectory.h>

using namespace std;
using namespace octomap;
using namespace octomath;

#define AStarWt 5.10
// Publish on the grid
struct Point3D
{
    int x, y, z;
};

struct PointWithCost
{
    int x, y, z;
    float cost;
};

struct SearchPoint
{
    Point3D pos;
    Point3D parent;
    float cost;
    float g_val;
    float h_val;
};

class compareF
{
    public:
        int operator() (const SearchPoint& p1, const SearchPoint& p2)
        {
            return ((p1.g_val + AStarWt*p1.h_val) > (p2.g_val + AStarWt*p2.h_val));
        }
};

void correctIdx(int &x, int &y, int &z, int x_size, int y_size, int z_size)
{
    if (x < 0)
    {
        x = abs(x) + x_size - 1;
    }

    if (y < 0)
    {
        y = abs(y) + y_size - 1;
    }

    if (z < 0)
    {
        z = abs(z) + z_size - 1;
    }
}

float calcHeuristic(Point3D point, Point3D goal)
{
    float eucDist = 0; // euclidean distance
    eucDist = pow((goal.x - point.x),2) + pow((goal.y - point.y),2) + pow((goal.z - point.z),2);
    eucDist = sqrt(eucDist);
    return eucDist;
}

vector<Point3D> aStarPlanner(Point3D start, Point3D goal, OcTree* tree)
{
    ros::NodeHandle nh;
    ROS_INFO("Started A* Planner");

    ros::Publisher pub = nh.advertise<trajectory_msgs::MultiDOFJointTrajectory>(
      mav_msgs::default_topics::COMMAND_TRAJECTORY, 10);
    
    trajectory_msgs::MultiDOFJointTrajectory trajectory_msg;
    trajectory_msg.header.stamp = ros::Time::now();
    
    // Define map bounds
    int min_x = -36; 
    int max_x =  36;
    int min_y = -36;
    int max_y =  36;
    int min_z =   0;
    int max_z =  72;
    int x_size = abs(min_x) + max_x;
    int y_size = abs(min_y) + max_y;
    int z_size = abs(min_z) + max_z; 
    double clearance = 0.50; // clearance from drone while planning
    SearchPoint startNode;
    startNode.pos = start;
    startNode.parent = {0,0,0};
    startNode.cost = 0.1;
    startNode.h_val = calcHeuristic(start,goal);
    startNode.g_val = 0.0;
    PointWithCost dir[10] = {{1,0,0,1},{0,1,0,1},{-1,0,0,1},{0,-1,0,1},{0,0,1,1},{0,0,-1,1},
                            {1,1,0,0.5},{-1,-1,0,0.5}, {1,-1,0,0.5},{-1,1,0,0.5}};

    // Data structures for algorithm
    priority_queue<SearchPoint, vector<SearchPoint>, compareF> open_list;
    double visited[x_size][y_size][z_size] = {0};

    Point3D currPos;
    float currCost;
    // Push start node to open list
    open_list.push(startNode);
    Point3D parentNode[x_size][y_size][z_size]; // parent node for each node on the map
    int count = 0;
    while (!open_list.empty())
    {
        SearchPoint front = open_list.top();
        open_list.pop();
        currPos = front.pos;
        if (currPos.x == start.x && currPos.y == start.y && currPos.z == start.z)
        {
            cout << "Start Node popped" << endl;
        }
        currCost = front.cost;
        int x_pos = front.pos.x;
        int y_pos = front.pos.y;
        int z_pos = front.pos.z;

        // convert negative idx to +ve for array indexing
        correctIdx(x_pos, y_pos, z_pos, max_x, max_y, max_z);
        // check if node has been visited already
        if (visited[x_pos][y_pos][z_pos] > 0.0)
        {
            continue;
        }
        visited[x_pos][y_pos][z_pos] = front.cost;
        parentNode[x_pos][y_pos][z_pos] = front.parent;
        if (front.parent.x == start.x && front.parent.y == start.y && front.parent.z == start.z)
        {
            cout << "Start Node assigned as parent" << endl;
        }
        count++;
        // Check if goal reached
        if (currPos.x == goal.x && currPos.y == goal.y && currPos.z == goal.z)
        {
            cout << "Goal Found. Parent Assigned " << count << " times."<< endl;
            break;
        }

        // Explore the neighboring nodes
        int new_x = 0;
        int new_y = 0;
        int new_z = 0;

        // Search the s-connected grid in 3D
        for (int i =0; i < 10; i++)
        {
            new_x = currPos.x + dir[i].x;
            new_y = currPos.y + dir[i].y;
            new_z = currPos.z + dir[i].z;

            // Validate that new position lies inside the map
            if(new_x<min_x || new_x >= max_x || new_y<min_y || new_y>=max_y || new_z<min_z || new_z>=max_z)
            {
                continue;
            }

            Point3D new_pos;
            new_pos.x = new_x;
            new_pos.y = new_y;
            new_pos.z = new_z;
            int new_x_arr = new_x;
            int new_y_arr = new_y;
            int new_z_arr = new_z;
            correctIdx(new_x_arr, new_y_arr, new_z_arr, max_x, max_y, max_z);
                        
            // Extract the node from the tree
            double temp_x = new_x;
            double temp_y = new_y;
            double temp_z = new_z;
            OcTreeNode* node = tree->search(temp_x, temp_y, temp_z, 0);
            int occupied = 0;

            if (node == 0 && visited[new_x_arr][new_y_arr][new_z] == 0) // if the node does not exist, assume it is unoccupied
            {
                // Check within 0.8 metres to make sure the drone has enough space to fly
                for (OcTree::leaf_bbx_iterator it = tree->begin_leafs_bbx(Vector3 (new_x-clearance, new_y-clearance, new_z-clearance), 
                    Vector3 (new_x+clearance, new_y+clearance, new_z+clearance)), end = tree->end_leafs_bbx(); it != end; it++)
                {
                    occupied = tree->isNodeOccupied(*it);
                    if (occupied == 1)
                    {
                        break;
                    }
                }
                if (occupied  == 0)
                {
                    SearchPoint newNode;
                    newNode.pos = new_pos;
                    newNode.cost = dir[i].cost;
                    newNode.h_val = calcHeuristic(new_pos, goal);
                    newNode.g_val = currCost + dir[i].cost;
                    newNode.parent = currPos;
                    open_list.push(newNode);
                }
            }

            else if (visited[new_x_arr][new_y_arr][new_z] == 0 && tree->isNodeOccupied(node)==0)
            {
                for (OcTree::leaf_bbx_iterator it = tree->begin_leafs_bbx(Vector3 (new_x-clearance, new_y-clearance, new_z-clearance), 
                    Vector3 (new_x+clearance, new_y+clearance, new_z+clearance)), end = tree->end_leafs_bbx(); it != end; it++)
                {
                    occupied = tree->isNodeOccupied(*it);
                    if (occupied == 1)
                    {
                        break;
                    }
                }
                if (occupied  == 0)
                {
                    SearchPoint newNode;
                    newNode.pos = new_pos;
                    newNode.cost = dir[i].cost;
                    newNode.h_val = calcHeuristic(new_pos, goal);
                    newNode.g_val = currCost + dir[i].cost;
                    newNode.parent = currPos;
                    open_list.push(newNode);
                }
            }

        }

    }
    
    // Backtrack
    vector<Point3D> finalPath;
    // Check if goal reached
    if (currPos.x == goal.x && currPos.y == goal.y && currPos.z == goal.z)
    {
        printf("Backtracking from Goal \n");
        while (currPos.x != start.x || currPos.y != start.y || currPos.z != start.z)
        {
            int x_pos = currPos.x;
            int y_pos = currPos.y;
            int z_pos = currPos.z;
            correctIdx(x_pos, y_pos, z_pos, max_x, max_y, max_z);
            
            finalPath.push_back(currPos);
            currPos = parentNode[x_pos][y_pos][z_pos];
            //cout << "Moved to parent" << endl;
        }
        finalPath.push_back(start);
        reverse(finalPath.begin(),finalPath.end());
    }
    else
    {
        printf("Goal not found\n");
    }

    for (auto i : finalPath)
    {
        Eigen::Vector3d pos_des(i.x,i.y, i.z);
        double yaw_des = 0.0;
        mav_msgs::msgMultiDofJointTrajectoryFromPositionYaw(pos_des, yaw_des, &trajectory_msg);
        cout << "Publishing Points (x,y,z): " << i.x << ", " << i.y << ", " << i.z << endl;
        pub.publish(trajectory_msg);
        ros::Duration(1).sleep();
    }
    cout << "All waypoints published" << endl;
    return finalPath;
} 

bool validateNode(Point3D point, OcTree* tree)
{
    double x = point.x;
    double y = point.y;
    double z = point.z;
    
    OcTreeNode* node = tree->search(x, y, z, 0);
    
    if (node == 0 || tree->isNodeOccupied(node) == 0)
    {
        return true;
    }

    else
    {
        return false;
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "AStarOT_RT");

    Point3D start = {0,0,1};
    Point3D goal  = {5,0,1};

    // load the map
    AbstractOcTree* tree = AbstractOcTree::read("/home/akshit/obstaclecourse2.ot");
    OcTree* bt = dynamic_cast<OcTree*>(tree);

    // Validate start and goal locations
    bool startValid = validateNode(start, bt);
    bool goalValid  = validateNode(goal, bt);
    if (startValid == false)
    {
        ROS_ERROR("Start Position is not valid/free");
        return 0;
    }

    else 
    {
        printf("Start position is valid \n");
    }
    
    if (goalValid == false)
    {
        ROS_ERROR("Goal Position is not valid/free");
        return 0;
    }

    else 
    {
        printf("Goal position is valid \n");
    }

    vector<Point3D> finalPath;
    finalPath = aStarPlanner(start, goal, bt);
      
    ros::spinOnce();
    ros::shutdown();
    // Write final Path to a file
    /*ofstream outFile("AStar_path_obstacleCourse2.txt");
    for (int i = 0; i < finalPath.size(); i++)
    {
        outFile << "0 " << finalPath[i].x << " " << finalPath[i].y << " " << finalPath[i].z << " " << "0" << endl;
    }
    outFile.close();*/
}