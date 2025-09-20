% 1.8 Matrices and Vectors

% When referring to a variable with multiple numberical values, MATLAB
% treats these variables as either matrices or arrays. When treated as
% arrays, MATLAB addresses these variables like other conventional
% programming languages, by performing element-by-element operations. When
% these variables are treated as matrices, MATLAB performs matrix
% operations with the variables. In MATLAB, the default uses matrix algebra
% instead of array operations.

A=[1 2 3;4 5 6;7 8 9]   % separate columns by spaces...
B=[9,8,7;6,5,4;3,2,1]   % ...or by commas

% ------------------------------------------------------------------------
% 1.8.1 Matrix Multiplication

% Matrix multiplication is not commutative
c=A*B
c2=B*A

% You can also multiply using a scalar
d=5*A


% Create a one-row matrix
x=[1 2 3]

% Create a one-column matrix
y=[1;2;3]

z=x*y
z=y*x
% ------------------------------------------------------------------------
% 1.8.2 Matrix Addition and Subtraction

