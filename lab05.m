%% Exercise 1

A = [2,3;4,-1];
b = [5;1];

solution = A\b;

x = solution(1);
y = solution(2);

% Display the values of x and y
disp(['The value of x is: ', num2str(x)]);
disp(['The value of y is: ', num2str(y)]);


%% Exercise 2

A = [1,2,3; 4,5,6; 7,8,9];
b = [14;32;50];


% the "\" operator in MATLAB can solve a system of equations for a linear
% system of the form Ax = b. Matrix A has a determinant of 0, so the system
% either have no solution or infinitely many. MATLAB will return a
% least-square solution ( the best approximation )
% if it cannot determine a unique solution.

detA = det(A);
disp(['Determinant of A: ', num2str(detA)]);
%since the det(A) is nearly 0, which means A is nearly singular (nearly has
%a determinant of 0).

solution  = A\b;
disp('Solution to the system, x = ');
disp(solution);


