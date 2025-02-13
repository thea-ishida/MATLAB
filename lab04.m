%% Lab 4: Vector and Matrices 
%
% Name: Thea Ishida
% Student Number: 251297414
%
% Exercise 1: Simple Matrix Calculations 
%
format compact

fprintf('A: a 4 by 4 matrix of random numbers\n');
A = rand(4,4)

B = A';
disp('Matrix B (Transpose of A)');
disp(B);

C1 = A*B %matrix multiplication (dot product of rows and columns)
C2 = A.*B %element-wise multiplication, A and B must be the same size 


%<sprintf('\L')>
%% Exercise 2: Matrix Construction and Vector Products 
%

E = eye(4)
q = [ 4 7; 8 3]

E(2:3, 3:4) = q;

disp('Modified E:');
disp(E);

E(1:2, 1:2) = q';

disp('Modified E:');
disp(E);

a = E(2, 1:3); %get the first three elemetns of the 2nd row
disp('Row vector a(first 3 elements of row 2):')
disp(a);

b = E(1:3, 3);
disp('Col vector a(first 3 elements of col 3):')
disp(b);

innerprod = a*b;
disp('Inner product of a and b:')
disp(innerprod)

dp = dot(a,b);
disp('checking dot product')
disp(dp)

outerprod = b*a;
disp('Outer product result: ')
disp(outerprod)