clear
tspan = [0 10000];  
initcond = [3 2]; 

% This solves ODE's numerically.
% y is the solution vector y(t,1) and y(t,2) for two variables here.
[t,y] = ode45(@oscrneqn,tspan,initcond)

plot(y(:,1),y(:,2))
% The ODE's in the Lengey's model (Oscillating chemical reaction)
function dydt = oscrneqn(t,y)
a=10;
b=3.5;
dydt = [a-y(1)-4*y(1)*y(2)/(1+y(1)^2) ; b*y(1)*(1-(y(2)/(1+y(1)^2)))];
end