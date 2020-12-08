#include "RRTstar.h"

using namespace std;

double RRTstar::Cost(Q* q1, Q* q2) {
    return EuclideanDist(q1->pose, q2->pose);
}

double RRTstar::GetRadius(){
    double gamma = 100;
    double n = V.size();
    return double(gamma * pow((log(n)/n),(1/double(numofDOFs))));
}

RRTstar::Q* RRTstar::Steer(Q* qnearest, Q* qsample) {
    // move eps distance from qnearest toward qsample
    Q* qnew = new Q;
    double temp[numofDOFs];
    double dist[numofDOFs];
    float maxdist = 0.0;
    for (int i = 0; i < numofDOFs - 1; i ++) {
        dist[i] = qsample->pose[i] - qnearest->pose[i];
        if (fabs(dist[i]) > eps) {
            dist[i] = (dist[i] > 0? eps : (-1.0*eps));
        } 
        if (fabs(dist[i]) > maxdist) {
            maxdist = fabs(dist[i]);
        }
    }
    float steps = 30.0;
    for (int step=1; step<int(steps+1); step++) {
        for (int i=0; i<numofDOFs; i++) {
            temp[i] = qnearest->pose[i] + step*(dist[i]/steps);
        }
        if (IsValidPose(temp)) {
            for (int i=0; i<numofDOFs; i++) {
                qnew->pose[i] = temp[i];
            }
        }
        else {
            if (step > 1) {
                return qnew;
            }
            else {
                return NULL;
            }
        }
    }
    return qnew;
}

vector<RRTstar::Q*> RRTstar::Near(Q* qnew, double rad) {
    // look through V and get all qnear within radius rad of qnew
    vector<Q*> Qnear;
    for (auto qnear : V) {
        float dist = MaxDist(qnew, qnear);
        if (dist < rad) {
            Qnear.push_back(qnear);
        }
    }
    return Qnear;
}

void RRTstar::Extend(Q* q) {
    // Extend map toward q
    double radius = min(GetRadius(), eps);
    auto qnearest = NearestNeighbor(q);
    auto qnew = Steer(qnearest, q);
    if (qnew != nullptr) {
        qnew->parent = qnearest;
        V.push_back(qnew);
        qnew->cost = qnearest->cost + Cost(qnearest, qnew);
        // Rewire
        Q* qmin = new Q;
        qmin = qnearest;
        for (auto qnear : Near(qnew, radius)) {
            float cost = qnear->cost + Cost(qnear, qnew);
            if (cost < qnew->cost) {
                qmin = qnear;
            }
        }
        qnew->parent = qmin;
    }
    else {
        auto qsample = Sample();
        Extend(qsample);
    }
}

void RRTstar::BuildRRT(Q* qstart) {
    time(&start);
    time(&end);
    int goalfound = 0;
    while((end-start) <= runtime) {
        auto qsample = Sample();
        Extend(qsample);
        time(&end);
    }
}

RRTstar::Q* RRTstar::FindGoalQ() {
    // search V to see if goal pose has been found
    for (auto q : V) {
        int nextq = 0;
        for (int i = 0; i < numofDOFs - 1; i++) {
            if ((q->pose[i] - goal_pose[i]) > 3) { // search within max 3 map grids from goal
                nextq = 1;
                break;
            }
        }
        if (!nextq && ClearPath(q->pose, goal_pose)) {
            return q;
        }
    }
    return nullptr;
}

vector<vector<int>> RRTstar::MakePlan(Q* qstart, Q* qgoal) {
    // trace parents back from qgoal to qstart
    stack<Q*> planstack;
    planstack.push(qgoal);
    while (planstack.top() != qstart) {
        if (MaxDist(planstack.top(), planstack.top()->parent) > eps) {
            auto interstack = Interpolate(planstack.top(), planstack.top()->parent);
            while (!interstack.empty()) {
                planstack.push(interstack.top());
                interstack.pop();
            }
        }
        else {
            planstack.push(planstack.top()->parent);
        }
    }

    vector<vector<int>> plan;
    while (!planstack.empty()) {
        vector<int> temp;
        for (int i = 0; i < numofDOFs - 1; i ++) {
            temp.push_back(planstack.top()->pose[i]);
        }
        plan.push_back(temp);
        planstack.pop();
    }
    planlength = plan.size();
    return plan;
}

vector<vector<int>>* RRTstar::RunRRT() {
    vector<vector<int>>* plan;
    Q* qstart = new Q;
    qstart->cost = 0.0;
    for (int i = 0; i < numofDOFs; i ++) {
        qstart->pose[i] = start_pose[i];
    }
    V.push_back(qstart);

    BuildRRT(qstart);
    auto qneargoal = FindGoalQ();
    if (qneargoal != nullptr) {
        Q* qgoal = new Q;
        qgoal->parent = qneargoal;
        for (int i = 0; i < numofDOFs; i++) {
            qgoal->pose[i] = goal_pose[i];
        }
        *plan = MakePlan(qstart, qgoal);
    }
    return plan;
}