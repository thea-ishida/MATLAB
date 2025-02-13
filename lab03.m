%% Lab 3: Arrays and More Numerical Types
%
% Your Name: Thea Ishida
% 251297414
%
% Exercise 1: Simple Array Calculations
%

%% 1D Arrays - Vectors 

v = [1 4 7 10 13] %creates a row vector
w = [1;4;7;10;13] %creates a column vector, ";" separates elements into rows
v(1:3) %extracts first three elements of v returning [1,4,7]
v(1,end) %assumes v is a 1xN matrix(1 row, multiple column), end refers to the last column, MATLAB return v(end) = 13
v(:) %stacks all elements into a single column vector 

%% 2D Arrays - Matrices

A = [1 2 3; 4 5 6; 7 8 9]
A(2,1) %select the element in row 2, column 1
A(3,3) = 0 %sets the element in the third row and third column type 
A(2,:) %select the second row 
A(:,2:3) %selects columns 2 and 3 from all rows
A(:,2)=[] %removes the entire second column from matrix A
A %display updated matrix
A(1:2,1:2) %submatrix: select rows 1 to 2 and cols 1 to 2
A(end:-1:1,end) %select last col and takes elements from bottom to top

%% Linear arrays
x = 0:0.1:5 %creates a vector x with values starting from 0 incrementing by 0.1 and stopping at 5
theta = linspace(0,2*pi,numel(x)) %creates vector theta of linearly spaced values between 0 and 2pi, 
% where the number of points is equal to the number of elements in the vector x
%linspace(start, end, num_points) is used to generate a vector of linearly spaced values between start and end with num_points total elements.
sin(theta)
%0 is the starting value.
%2*pi is the ending value.
%numel(x) gives the number of elements in x, so theta will have the same number of elements as x.

%% Identity matrices
eye(3)
eye(3,3)

%% Exercise 2: Matrix Inverse
%
A = magic(3) %creates a 3x3 magic square(sum of numbers in each row, col, both diagonals are the same)
B = inv(A)
A*B %matrix operation of A and B (dot product)
B*A
C = [1 2 3; 4 5 6; 7 8 9]
B*C
A\C %matrix solution to A x X = C, equivalent to A^-1 x C, same as B*C
C*B
C/A %C/A = C x A^-1, C is being divided by A, multiply C by the inverse of A
