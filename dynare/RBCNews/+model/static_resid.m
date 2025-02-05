function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = model.static_resid_tt(T, y, x, params);
end
residual = zeros(16, 1);
lhs = T(1);
rhs = T(2)*T(5);
residual(1) = lhs - rhs;
lhs = T(6)/(1-exp(y(4)));
rhs = exp(y(7));
residual(2) = lhs - rhs;
lhs = params(7)*exp(y(3));
rhs = exp(y(3))*(1-params(4))+exp(y(8));
residual(3) = lhs - rhs;
lhs = exp(y(1));
rhs = exp(y(2))+exp(y(8));
residual(4) = lhs - rhs;
lhs = exp(y(1));
rhs = T(7)*T(8);
residual(5) = lhs - rhs;
lhs = exp(y(7));
rhs = exp(y(1))*(1-params(5))/exp(y(4));
residual(6) = lhs - rhs;
lhs = y(6);
rhs = exp(y(1))*params(5)*4/exp(y(3));
residual(7) = lhs - rhs;
lhs = y(5);
rhs = y(5)*params(6)+x(2)+x(1);
residual(8) = lhs - rhs;
lhs = y(9);
rhs = x(1);
residual(9) = lhs - rhs;
lhs = y(10);
rhs = x(1);
residual(10) = lhs - rhs;
lhs = y(11);
rhs = x(1);
residual(11) = lhs - rhs;
lhs = y(12);
rhs = x(1);
residual(12) = lhs - rhs;
lhs = y(13);
rhs = x(1);
residual(13) = lhs - rhs;
lhs = y(14);
rhs = x(1);
residual(14) = lhs - rhs;
lhs = y(15);
rhs = x(1);
residual(15) = lhs - rhs;
lhs = y(16);
rhs = x(1);
residual(16) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
