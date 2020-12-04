#include "RRTbase.h"

using namespace std;

RRT::RRT(double* map, int x_size, int y_size, int z_size, double* start_pose, double* goal_pose) {
    this->map = map;
    this->x_size = x_size;
    this->y_size = y_size;
    this->z_size = z_size;
    this->sizes[0] = x_size;
    this->sizes[1] = y_size;
    this->sizes[2] = z_size;
    this->sizes[3] = 2*PI;
    this->start_pose = start_pose;
    this->goal_pose = goal_pose;
    pathvec.clear();
};

int RRT::GetMapIndex(int x, int y, int z) {
    // assuming 0 start indexing
    int index = z * x_size * y_size;
    index = index + (y * x_size) + x;
    return index;
}

int RRT::IsValidPose(Q* q) {
    // determine if pose is valid in map
    // check map boundaries
    if (q->pose[0] < 0 || q->pose[0] >= x_size ||
        q->pose[1] < 0 || q->pose[0] >= y_size ||
        q->pose[2] < 0 || q->pose[2] >= z_size) {
        return 0;
    }

    // check the map (0 map value is free, 1 map value is obstacle)
    if (!map[GetMapIndex(q->pose[0], q->pose[1], q->pose[2])]) {
        return 0;
    }

    return 1;
}

RRT::Q* RRT::Sample() {
    // generate random pose
    Q* qsample = new Q;
    // use goal biasing
    if (goalBias) {
        uniform_real_distribution<double> probability(0,1);
        float prob = (double) (rand() / double(RAND_MAX));
        if (prob < goal_bias_value) {
            for (int i = 0; i < numofDOFs; i++) {
                qsample->pose[i] = goal_pose[i];
            }  
            return qsample;  
        }
    }

    // otherwise
    for (int i = 0; i < numofDOFs; i++) {
        // uniform_real_distribution<double> angle(0, 2*PI);
        // qrand.angles[j] = angle(random);
        qsample->pose[i] = (double) (rand() / double(RAND_MAX)) * (sizes[i]);
    }
    return qsample;
}

int RRT::Same(Q* q1, Q* q2) {
    // check if q1 and q2 are at the same pose
    for (int i=0; i<numofDOFs; i++) {
        if (q1->pose[i] != q2->pose[i]) {
            return 0;
        }
    }
    return 1;
}

RRT::Q* RRT::NearestNeighbor(Q* q) {
    // Find Nearest Vertex Neighbor
    Q* qnearest = new Q;
    double min_dist = INFINITY;
    for (auto qnear : V) {
        float dist = EuclideanDist(q->pose, qnear->pose);
        if (dist < min_dist) {
            min_dist = dist;
            qnearest = qnear;
        }
    }
    return qnearest;
}

double RRT::EuclideanDist(double* q1_pose, double* q2_pose) {
    double dist = 0.0;
    for (int i=0; i<numofDOFs; i++) {
        dist += pow((q1_pose[i] - q2_pose[i]), 2);
    }
    dist = sqrt(dist);
    return dist;
}

int RRT::MoveUntilObstacle(Q* qnearest, Q* qsample, Q* qnew) {
    // move in straight line from qnearest toward qsample until obstacle or eps distance
    double maxdist = 0.0;
    double dist[numofDOFs];
    for (int i = 0; i < (numofDOFs - 1); i++) {
        dist[i] = qsample->pose[i] - qnearest->pose[i];
        if (fabs(dist[i]) > eps) {
            dist[i] = ((dist[i] > 0)? eps : (-1.0*eps));
        }
        if (fabs(dist[i]) > maxdist) {
            maxdist = fabs(dist[i]);
        }
    }
    dist[theta] = qsample->pose[theta] - qnearest->pose[theta];

    double steps = 50;
    double temp[numofDOFs];
    for (int step = 1; step < int(steps+1); step++) {
        for (int i = 0; i < numofDOFs; i++) {
            temp[i] = qnearest->pose[i] + step * (dist[i]/steps);
        }
        if (IsValidPose(temp)) {
            for (int i = 0; i < numofDOFs; i++) {
                qnew->pose[i] = temp[i];
            }
        }
        else {
            return step;
        }
    }
    return 0;
}

void RRT::Extend(Q* q) {
    // Extend map towards q
    // Move in direction of q from q parent
    auto qnearest = NearestNeighbor(q);
    Q* qnew = new Q;
    if (MoveUntilObstacle(qnearest, q, qnew)) {
        qnew->parent = qnearest;
        V.push_back(qnew);
    }
}

RRT::Q* RRT::ReachedGoal() {
    auto q = V.back();
    for (int i = 0; i < (numofDOFs-1); i++) {
        if (q->pose[i] != goal_pose[i]) {
            return nullptr;
        }
    }
    double dist = q->pose[theta] - goal_pose[theta];
    if (dist < tol) {
        return q;
    }
    return nullptr;
}

stack<RRT::Q*> RRT::Interpolate(Q* qnear, Q* qfar) { //near is goalside
    // create a stack of points to interpolate far away pts
    stack<Q*> interstack; //base: qfar, top: qnear (already in pathstack)
    float maxdist = 0.0;
    for (int i=0; i<(numofDOFs-1); i++) {
        float tempdist = qfar->pose[i] - qnear->pose[i];
        if (fabs(tempdist) > maxdist) {
            maxdist = fabs(tempdist);
        }
    }
    float steps = maxdist / eps;
    double dist[numofDOFs];
    interstack.push(qfar);
    for (int i=0; i<numofDOFs; i++) {
        dist[i] = (qnear->pose[i] - qfar->pose[i])/steps;
    }
    for (int i=1; i<int(steps); i++) {
        Q* qnew = new Q;
        for (int j=0; j<numofDOFs; j++) {
            qnew->pose[j] = qfar->pose[j] + i*dist[j];
        }
        interstack.push(qnew);
    }
    return interstack;
}

double RRT::MaxDist(Q* q1, Q* q2) {
    // get max distance between q1 and q2
    double maxdist = 0.0;
    for (int i = 0; i < (numofDOFs-1); i++) {
        double dist = fabs(q1->pose[i] - q2->pose[i]);
        if (dist > maxdist) {
            maxdist = dist;
        }
    }
    return maxdist;
}

void RRT::MakePlan(Q* qstart, Q* qgoal) {
    // make a stack of the Q's in the path
    stack<Q*> pathstack;
    pathstack.push(qgoal);
    while (pathstack.top() != qstart) {
        if (MaxDist(pathstack.top(), pathstack.top()->parent) > eps) {
            Q* qparent = pathstack.top()->parent;
            auto interstack = Interpolate(pathstack.top(), pathstack.top()->parent);
            while (!interstack.empty()) {
                pathstack.push(interstack.top());
                interstack.pop();
            }
        }
        else {
            pathstack.push(pathstack.top()->parent);
        }
    }
    numsamples = pathstack.size();

    // put them into "path"
    if (numsamples < bestpath) {
        // put in vector for local biasing
        pathvec.clear();
        while (!pathstack.empty()) {
            pathvec.push_back(pathstack.top());
            pathstack.pop();
        }
        bestpath = numsamples;
        delete[] path;
        path = (double**) malloc(numsamples*sizeof(double*));
        for (int i=0; i<numsamples; i++) {
            path[i] = (double*) malloc(numofDOFs*sizeof(double));
            for (int j=0; j<numofDOFs; j++) {
                path[i][j] = pathvec[i]->pose[j];
            }
        }
    }
}

double** RRT::RunRRT() {
    Q* qstart = new Q;
    for (int i = 0; i < numofDOFs; i++) {
        qstart->pose[i] = start_pose[i];
    }
    V.push_back(qstart);
    int count = 0;
    time(&start);
    time(&end);
    // while (k < 8500) { // uncomment if iteration based instead of time based
    while ((end - start) <= run_time) { 
        auto qsample = Sample();
        Extend(qsample);
        auto qgoal = ReachedGoalQ();
        if (qgoal != nullptr) {
            MakePlan(qstart, qgoal);
            // return path; // uncomment if returning first path found
        }
        count ++ ;
        time(&end);
    }
    if (bestpath < INT_MAX) {
        numsamples = bestpath;
    }
    cout << "Vector Size: " << V.size() << endl; 
    cout << "Plan Length: " << numsamples << endl;
    return path;
}