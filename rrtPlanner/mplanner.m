function[plan, planlength] = mplanner(envmap, start_pose, goal_pose, planner_id)
%call the planner in C
[plan,planlength] = planner(envmap, start_pose, goal_pose, planner_id);

