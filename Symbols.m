%% Символьные выражения
%% 1.1
clear;
syms x
f = x^5 + 4*x^4 -2*x^3 - 14*x^2 - 3*x - 18;
factor(f)
%% 1.2
clear;
syms x y
f = x^3 + x^2*y + x^2 - 2*x*y^2 + x*y - 2*y^2;
factor(f)
%% 2.1
clear;
syms x
y = x*exp(-x);
limit(y, x, Inf)
%% 2.2
clear;
syms x
y = tan(x)^tan(2*x);
limit(y, x, pi/4)
%% 2.3
clear;
syms x
y = atan(1/(1-x));
limit(y, x, 1, 'right')
%% 2.4
clear;
syms x
y = (7*x^3 + x^2 -1)/(5*x^2 +2*x+1);
limit(y, x, Inf)
%% 2.5
clear;
syms x
h
y = (sqrt(x + h) - sqrt(x))/h;
limit(y, h, 0)
%% 3.1
clear;
syms x
y = atan(x)/2 - x/(2*(1+x^2)^2);
simplify(diff(y))
%% 3.2
clear;
syms x
y = 3*x^4 - 14*x^3 + 12*x^2 +24*x + 6;
simplify(diff(y))
%% 3.3
clear;
syms x
y = (sin(3*x) - cos(3*x))^2;
simplify(diff(y))
%% 3.4
clear;
syms x
y = log(x^2 +2)/2 + (2-x)/(4*(x^2+2)) - 1/(4*sqrt(2))*atan(x/sqrt(2));
simplify(diff(y))
%% 3.5
clear;
syms x
y = 1/6*log((x-3)/(x+3));
simplify(diff(y))
%% 4.1
clear;
syms x
y = sqrt(1-x^2)/(x^2);
int(y)
%% 4.2
clear;
syms x
y =1/(sin(x)^3);
int(y)
%% 4.3
clear;
syms x
y =(sin(2*x)+1)^(1/7)*cos(2*x);
int(y)
%% 4.4
clear;
syms x
y =15*sqrt(x+3)/((x+3)^2*sqrt(x));
int(y, 1/8, 1)
%% 4.5
clear;
syms x
y =1/(1+x^2);
int(y, 0,Inf)
%% 4.6
clear;
syms x
y =1/(-1+x^2);
int(y, -2, 2)
%% 4.7
clear;
syms x
y =log(sin(x));
int(y, 0, pi/2)
%% 5.1
clear;
syms x
symsum(1/(x^2))
%% 5.2
clear;
syms n
symsum((-1)^((n^2 + n)/2)*n/(2^n), n, 1, Inf)
%% 5.3
clear;
syms x k
symsum(x^k, k, 0, Inf)
%% 5.4
clear;
syms x k
symsum((x - 3)^(2*n)/n^(1/2), n, 1, Inf)
%% 5.5
clear;
syms x k
symsum(1/((x - k)^3), k, -Inf, Inf)
%% 6.1
clear;
syms x
T = taylor(exp(x));
ezplot(T, -4, 4)
%% 6.2
clear;
syms x
T = taylor(log(2*x-1), 'Order', 3, 'ExpansionPoint', 1);
ezplot(T, -4, 4)
%% 6.3
clear;
syms x
T = taylor(sin(x)^2, 'Order', 10)
ezplot(T, -4, 4)
%% 7
clear;
syms x
y = exp(1/(1-x^2))/(1+x^2);
ezplot(y, -7, 7);
hold on
y1 = linspace(-10, 10, 20);
plot(-1, y1, '+');
plot(1, y1, '+');
f = @(x)exp(1./(1-x.^2))./(1+x.^2);
hold off