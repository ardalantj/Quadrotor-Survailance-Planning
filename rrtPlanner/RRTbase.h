#pragma once

#include <math.h>
#include <vector>
#include <string>
#include <unordered_map>
#include <queue>
#include <array>
#include <stack>
#include <iostream>
#include <time.h>
#include <stdlib.h>
#include <ctime>
#include <numeric>
#include <list>
#include <typeinfo>
#include <memory>
#include <random>
#include <cmath>

using namespace std;

class RRT {
    public:
        int run_time = 5;
        double PI = 3.141592654;
        static constexpr int numofDOFs = 4;
        double* map; 
        int x_size;
        int y_size;
        int z_size;
        int theta = 3;
        int sizes[numofDOFs];
        double* start_pose;
        double* goal_pose;
        double** path;
        int bestpath = INT_MAX;
        double bestcost = INFINITY;
        default_random_engine random;
        bool goalBias = true; // whether or not to use goal biasing
        float goal_bias_value = 0.2;
        double eps = 1;
        double tol = 0.03;
        time_t start, end;
        struct Q {
            double pose[numofDOFs]; // 4 DOF (x, y, z, theta)
            float cost;
            Q* parent;
        };
        std::vector<Q*> V; // vector of pointers to vertices (serves as the map)
        vector<Q*> pathvec; // store current path for local bias
        int numsamples;
        int bestpath;

        RRT(double* map, int x_size, int y_size, int z_size, double* start_pose, double* goal_pose);
        int GetMapIndex(int x, int y, int z);
        int IsValidPose(Q* q);
        Q* Sample();
        int Same(Q* q1, Q* q2);
        Q* NearestNeighbor(Q* q);
        double EuclideanDist(double* q1_pose, double* q2_pose);
        int MoveUntilObstacle(Q* qnearest, Q* qsample, Q* qnew);
        void Extend(Q* q);
        float Cost(Q* q1, Q* q2);
        Q* ReachedGoal();
        stack<Q*> Interpolate(Q* qnear, Q* qfar);
        double MaxDist(Q* q1, Q* q2);
        void MakePlan(Q* qstart, Q* qgoal);
        double** RunRRT();
};