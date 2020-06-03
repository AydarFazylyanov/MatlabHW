%% Графика 2D
x = linspace(0, 2);
plot(x, humps(x), fminbnd(@(x)-humps(x), 0, 2), humps(fminbnd(@(x)-humps(x), 0, 2)), 'o');
%%
clear;
x = linspace(0, 2);
plot(x, x+1./(x.*x)); axis([-15 15 -20 120]);
%%
clear;
x = linspace(0, 10);
plot(x, x.*sin(pi.*x), x, x, x, -x); axis([0 10 -10 10]);
%%
clear;
a = 1/2; b = 1/3; m = 7; n = -17;
t = linspace(-5, 5, 1000);
x = cos(t) + a.*cos(m.*t) + b.*sin(n.*t);
y = sin(t) + a.*sin(m.*t) + b.*cos(n.*t);
plot(x, y);
%%
clear;
a = 3; b = 4; n = 3; m = 2;
phi = linspace(0, 2*pi);
x = a.*sin(n.*phi+phi(1));
y = b.*sin(m.*phi);
plot(x, y); axis([-5 5 -5 5]);
%%
clear;
for k = 1:0.1:10
    a = 1/4; b = 1/4; m = 8; n = 8;
    t = linspace(-5, 5, 1000);
    x = cos(t) - a.*sin(m.*t) + b.*cos(n.*t);
    y = sin(t) + a.*sin(m.*t) + b.*cos(n.*t);
    plot(x./k, y./k);
    hold on
end
%%
clear;
x1 = linspace(-2, -0.1); x2 = linspace(0.1, 0.9); x3 = -linspace(1.1, 1.9);
y1 = 1./x1 - 1./(x1 -1) + 1./(x1 - 2); y2 = 1./x2 - 1./(x2 - 1) + 1./(x2 - 2);
y3 = 1./x3 - 1./(x3 - 1) + 1./(x3 -2);
plot(x1, y1, x2, y2, x3, y3);
%%
clear;
x = linspace(-10, 10);
y = 2.*x./(1+x.^2);
plot(x, y); axis([-10 10 -1.5 1.5]);
%%
clear;
phi = linspace(0.1, 4*pi);
[x, y] = pol2cart(phi, 1./phi);
plot(x, y);
%%
clear;
phi = linspace(0, 2*pi);
k = 2; a = 2;
[x, y] = pol2cart(phi, a.*sin(k.*phi));
plot(x, y);
%%
clear;
l = 10; a = 21; phi = linspace(0, 2*pi);
[x, y] = pol2cart(phi, 1 - a.*sin(phi));
plot(x, y);
%%
clear;
a = 2;
y = linspace(0, a);
x = -(a.*log((a + sqrt(a.*a - y.*y))./y) - sqrt(a.*a - y.*y));
x1 = -x;
plot(x1, y, x, y); axis([-10 10 0 5])
