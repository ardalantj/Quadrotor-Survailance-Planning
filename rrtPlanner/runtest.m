function[numofmoves, caught, plantime] = runtest(mapfile, start_pose, goal_pose, planner_id)

envmap = load(mapfile);

close all;

%draw the environment

figure('units','normalized','outerposition',[0 0 1 1]);
imagesc(envmap'); axis square; colorbar; colormap jet; hold on;



%plan should be a matrix of D by N 
%where D is the number of DOFs and
%N is the number of steps in the plan 
tic;
[plan, planlength] = mplanner(envmap, start_pose, goal_pose, planner_id); 
plantime = toc;

fprintf(1, 'plan of length %d was found\n', size(plan,1));
numofmoves = planlength;

if (numofmoves < 2)
    caught = 0;
else 
    caught = 1;
end

%draw the plan
for i = 1:planlength
    x = plan(i,1);
    y = plan(i,2);
    z = plan(i,3);
    plot(x,y,z, 'c-');
    pause(0.1);
end
