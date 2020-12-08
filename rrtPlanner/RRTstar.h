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
#include <variant>

#include "RRTbase.h"

using namespace std;

class RRTstar : public RRT {
    public:
        int runtime = 60;

        using RRT::RRT;
        double Cost(Q* q1, Q* q2);
        double GetRadius();
        Q* Steer(Q* qnearest, Q* qsample);
        vector<Q*> Near(Q* qnew, double rad);
        void Extend(Q* q);
        void BuildRRT(Q* qstart);
        Q* FindGoalQ();
        vector<vector<int>> MakePlan(Q* qstart, Q* qgoal);
        vector<vector<int>>* RunRRT();
};