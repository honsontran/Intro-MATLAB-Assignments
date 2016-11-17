%Decimal number from uniform distribution between 5 and 10.
%Naming variables
low = 5;
high = 10;

%Calculation: Logic is to start from the lowest, then add a fraction (using
%the rand decimal) and multiply it by the max it can go up (high - low)
uniform = low + (high - low) * rand(1);

%Display the result.
disp('Your decimal number with uniform distribution between 5 and 10 is: ');
disp(uniform);

%-----------------------------------------------------------------------

%Random decimal number with normal distribution with mean 0.
normal = randn(1, 1); %rand(how many numbers, columns). Increasing amount of numbers leads to close mean of 0.

disp('Your random decimal number from a normal distribution with mean 0 is: ');
disp(normal);

%If you wanted to increase sample size and test the mean
%disp('The current mean for this number is: ');
%disp(mean(normal));

%-----------------------------------------------------------------------

%Random Integer that simulates a dice roll (from 1 to 6)

%Randi outputs as a matrix. Let's define how many faces the dice has and
%multiple it by the times we want it to roll, which is once.

face = 6; %This dice has 6 faces.
turns = 1; %We are rolling this once.

dice = randi([face], [turns]); %randi accepts this 1x1 matrix.

disp('Your dice roll from 1 to 6 is: ');
disp(dice);