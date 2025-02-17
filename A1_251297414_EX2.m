%% 2a) Magic Square
% This script contains functions to generate a random matrix and check 
% whether a matrix is a magic square.
% By: Thea Ishida
% Student Number: 25129741

% 2a) Write the function randomMatrix(n)
% randomMatrix(n) - returns a n x n matrix with its elemetns that are
% distinct positive intergers randomly chosen between 1 and n^2

function nums = randomMatrix(n)
    nums = randperm(n^2); %Use randperm to generate random numbers from 
    % 1 to n^2
    nums = reshape(nums, n, n); %reshape into a nxn matrix
end

% Define an example usage 
n = 3;
result = randomMatrix(n);
disp(result)

%% 2b) isMagic Function
% isMagic - takes on single matrix input M, returns the numerical output 1
% if the matrix is magic, 0 else

function result = isMagic(M)
    % Get the matrix dimensions
    [rows, cols] = size(M);

    % Check if the matrix is a square matrix
    if rows ~= cols
        result = 0;
        return;
    end

    %calculate the magic constant using the sum of the first two rows
    magicConstant = sum(M(1, :));

    %Check if the sum of all rows is equal to the magic constant
    if any(sum(M, 2) ~= magicConstant)
        result = 0;
        return;
    end

    %Check if sum of all cols is equal to magic constant
    if any(sum(M,1) ~= magicConstant)
        result = 0;
        return;
    end

    %Check if sum of diagonalis is equal to magic constant
    if sum(diag(M)) ~= magicConstant || sum(diag(flipud(M))) ~= magicConstant
        result = 0;
        return;
    end

    %if all conditions are met the, return true (1) 
    result = 1; 
end

% Define matrices for testing 
M = [1, 2, 3; 4, 5, 6; 7, 8, 9]; % not a magic square
M2 = [6, 1, 8; 7, 5, 3; 2, 9, 4]; % is a magic square

magicMatrix = isMagic(M);
testMagic = isMagic(M2);

disp("Testing if Matrix M is a magic square, 1 = True, 0 = False");
disp(magicMatrix);
disp("Testing if Matrix M2 is a magic square, 1 = True, 0 = False");
disp(testMagic);

%% 2c) Using the built-in MATLAB magic() function
% This function generates an n x n magic square

magicTest2 = magic(3); % generate a 3x3 magic square
testIsMagic = isMagic(magicTest2);% check if it is magic 

disp("Testing isMagic with built-in magic() function");
disp(testIsMagic);

% generate a random 3 x 3 matrix and test if its magic 
magicTest3 = randomMatrix(3);
testIsMagic2 = isMagic(magicTest3);

disp("Testing isMagic with built-in randomMatrix function");
disp(testIsMagic2); % likely output 0 

