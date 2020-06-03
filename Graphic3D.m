%% Графика 3D
x = -10:0.2:10;
y = -10:0.2:10;
a = 5;
[X, Y] = meshgrid(x, y);
Z = a.*X.*exp(-X.*X - Y.*Y);
surf(X, Y, Z);
%%
clear;
x = -10:0.5:10;
y = -10:0.5:10;
a = 3;
[X, Y] = meshgrid(x, y);
Z = a.*sin(sqrt(X.*X + Y.*Y))./sqrt(X.*X + Y.*Y);
surf(X, Y, Z);
%%
clear;
x = -10:0.5:10;
y = -10:0.5:10;
a = 1; b = 1; c = 1; d = 1;
[X, Y]  = meshgrid(x, y);
Z = (-a.*x - b.*y - d)./c;
plot3(X, Y, Z);
%%
clear;
a = 2; y = linspace(0, a);
x = -(a.*log((a+sqrt(a.*a - y.*y))./y) - sqrt(a.*a - y.*y));
x1 = -x;
plot(x1, y, x, y); axis([-10 10 0 5])