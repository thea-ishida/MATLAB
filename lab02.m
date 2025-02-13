%% Lab 2: Loops and Functions
%
% Your Name: Thea Ishida
% 251297414
%
%% Exercise 1: Loops and Functions
%
%% Array Reversal Testing

% Test with a 1D numerical vector
numeric_vector = [1, 2, 3, 4, 5];
reversed_numeric = reverse_array(numeric_vector);
disp('Reversed Numeric Vector:');
disp(reversed_numeric);

% Test with a 1D string
string = 'hello';
reversed_string = char(reverse_array(abs(string)));
disp('Reversed String:');
disp(reversed_string);

% Test with a 2D matrix
matrix = [1, 2; 3, 4];
try
    reversed_matrix = reverse_array(matrix);
catch ME
    disp('Error for 2D matrix:');
    disp(ME.message);
end

% The conditions min(size(x)) == 1 and numel(size(x)) < 3 are needed to ensure
% that the input is a 1D array. The first condition checks that at least one dimension
% is 1, meaning it could be a row or column vector, and the second condition checks that
% the array is not a 3D or higher-dimensional array.
