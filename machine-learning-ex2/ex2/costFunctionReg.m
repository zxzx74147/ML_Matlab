function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
len=length(theta);
if(length(lambda)==1)
    lambda=lambda*ones(len,1);
    lambda(1,1)=0;
end
    
z=X*theta;
h=sigmoid(z);
J = sum(-y.*log(h)-(1-y).*log(1-h))/m+sum((theta.^2).*lambda)/(2*m);
temp = lambda'.*theta'./m;

grad = (h-y)'*X/m+temp;


% =============================================================

end
