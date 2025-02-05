function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = model.static_g1_tt(T, y, x, params);
end
g1 = zeros(2, 2);
g1(1,2)=1-exp(params(4)*log(y(2))+params(3)*x(1))*params(4)*1/y(2);
g1(2,1)=T(1)-T(1)*params(1);
g1(2,2)=y(1)*T(2)-(T(1)*params(1)+(y(2)+y(1))*params(1)*T(2));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
