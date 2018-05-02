function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% X = 
%    1  x1
%    1  x2
%    1  x3
%    1  x4
%    1  x5

% y =
%   y1
%   y2
%   y3
%   y4
%   y5

% theta =
%    theta1
%    theta2
    
% X * theta = theta1 + theta2 * x2 = hypothesis(x) = 
%   hypothesis_1
%   hypothesis_2
%   hypothesis_3
%   hypothesis_4
%   hypothesis_5

J = 1/(2*m) * sum(((X * theta - y).^2));
% =========================================================================

end
