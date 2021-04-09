% the following is used to determine the least squares solutions 
% the least squares solution is used is a method in numerical analysis that
% is used to determine the closest solution to inconsistant equations 

% first determine the A matrix 
function [x_bar,r]=least_square(A,b)
A_transpose = transpose(A);

% now the product of transpose matrix and A 
first_product = A_transpose*A;

%now the product of the transpose and b matrix
second_product = A_transpose*b;

%now we have the problem first_product*x_bar = second_product 
% therefore solution is given by x_bar =
% inverse_first_product*second_product 
inv_first_product = inv(first_product);

%therefore 
x_bar = first_product\second_product;

% the r is 
r = b - A*x_bar
end


% i.e to run this function just define  A, b in command window and then type least_square(A,b) 