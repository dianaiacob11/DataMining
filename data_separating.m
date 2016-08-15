%% Script seperates the data by the activitation

% Load
load('data_train.mat')
load('y_training.mat')

% seperates by activity
walking       = Xtrain( find(y_train == 1), : );
walking_up    = Xtrain( find(y_train == 2), : );
walking_down  = Xtrain( find(y_train == 3), : );
sitting       = Xtrain( find(y_train == 4), : );
standing      = Xtrain( find(y_train == 5), : );
laying        = Xtrain( find(y_train == 6), : );

% calculate the mean
walking_m       = mean( walking );
walking_up_m    = mean( walking_up );
walking_down_m  = mean( walking_down );
sitting_m       = mean( sitting );
standing_m      = mean( standing );
laying_m        = mean( laying );

%% Plot the first 3 features of every activity
figure()
plot3(walking_m(1),walking_m(2),walking_m(3),'o')
hold all;
plot3(walking_m(1),walking_m(2),walking_m(3),'o')
plot3(walking_up_m(1),walking_up_m(2),walking_up_m(3),'o')
plot3(walking_down_m(1),walking_down_m(2),walking_down_m(3),'o')
plot3(sitting_m(1),sitting_m(2),sitting_m(3),'o')
plot3(standing_m(1),standing_m(2),standing_m(3),'o')
plot3(laying_m(1),laying_m(2),laying_m(3),'o')
grid on
legend('walking','walking\_upstairs','walking\_downstairs','sitting','standing','laying');
title('Time BodyAcc-mean()')
xlabel('X');
ylabel('Y');
zlabel('Z');


%% Plot the DATA
% mean data plot for all 6 activities
figure
plot( walking_m,'o'); % label 1
hold all;
plot( walking_up_m,'o'); % 2
plot( walking_down_m,'o'); % 3
plot( sitting_m,'o'); % 4
plot( standing_m,'o'); % 5
plot( laying_m,'o'); % 6
legend('walking','walking\_upstairs','walking\_downstairs','sitting','standing','laying');
xlabel('features');
ylabel('feature values');
title('mean features');


%% data plot for participant 1 for all 6 activities - only one entity from the data (row)
figure
plot(Xtrain(79,:),'o'); % label 1
hold all;
plot(Xtrain(151,:),'o'); % 2
plot(Xtrain(126,:),'o'); % 3
plot(Xtrain(28,:),'o'); % 4
plot(Xtrain(1,:),'o'); % 5
plot(Xtrain(52,:),'o'); % 6
legend('walking','walking\_upstairs','walking\_downstairs','sitting','standing','laying');
xlabel('features');
ylabel('feature values');
title('features for paticipant 1');

