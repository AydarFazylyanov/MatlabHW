%% Корни
%% 3.a
x = linspace(-3, 3, 100);
f = 'sin(exp(x))';
plot(x, eval(f), x, 0*x, ':'); grid on
z = ginput(1);
[zr, fr] = fzero(f, z(1));
hold on
plot(zr, fr, 'r*', z(1), z(2), 'g*')
hold off
%% 3.b
clear;
x = linspace(-3, 3);
f = 'sin(x.*(1-x))';
plot(x, eval(f), x, 0*x, ':'); grid on
z = ginput(1);
[zr, fr] = fzero(f, [0, 2*pi]);
hold on
plot(zr, fr, 'r*', z(1), z(2), 'g*')
hold off
%% 3.c
clear;
x = linspace(0, 4*pi);
f = 'x.*sin(x) - cos(x)';
plot(x, eval(f), x, 0*x, ':'); grid on
z = ginput(1);
[zr, fr] = fzero(f, z(1));
hold on
plot(zr, fr, 'r*', z(1), z(2), 'g*')
hold off
%% 3.d
clear;
x = linspace(pi/2, 3*pi);
f = 'sin(x).*sin(x) + (0.5 - 1./x).*cos(x) - 0.5';
plot(x, eval(f), x, 0*x, ':'); grid on
z = ginput(1);
[zr, fr] = fzero(f, z(1));
hold on
plot(zr, fr, 'r*', z(1), z(2), 'g*')
hold off
%% 3.e
clear;
x = linspace(-2*pi, 6*pi, 1000);
f = '5*exp(-0.1 * x).*sin(x) - 0.1*x';
plot(x, eval(f), x, 0*x, ':'); grid on
z = ginput(1);
[zr, fr] = fzero(f, z(1));
hold on
plot(zr, fr, 'r*', z(1), z(2), 'g*')
hold off
%% 3.f
clear;
n = input('Put in n: ');
x = linspace(-2, 2, 100);
f = @(x)x.^n;
fplot(@(x)x.^n - 1); grid on
z = ginput(1);
[zr, fr] = fzero(f, z(1));
hold on
plot(zr, fr, 'r*', z(1), z(2), 'g*')
hold off
%% 1.a
%% Метод Ньютона
clear;
a = -5; b = 5;
m = 50; x = linspace(a, b, m);
h = 0.001; iter = 5; eps = 0.001;
f = @(x)1+x.*sin(x);
y = f(x);
plot(x, f(x), x, 0*x, ':'); grid on
hold on
y_min = min(y); y_max = max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
y_lim = ([y_min, y_max]);
z = ginput(1);
x1 = z(1);
for i=1:iter
    yh = (f(x1+h)-f(x1))/h;
    x2 = x1 - f(x1)/yh;
    P = plot(x, f(x1)+yh*(x-x1), ':', x1, f(x1), '*', x2, 0, '*', x2, f(x2), 'o');
    L = line([x2, x2], [0, f(x2)]);
    set(L, 'LineStyle', ':');
    x1 = x2;
    if abs(f(x2))<eps break;
    end
    pause
    delete(P, L);
end
hold off
'End Iteration';
%% Метод деления пополам
clear;
a = -5; b = 5;
m = 50; x = linspace(a, b, m);
h = 0.001; iter = 25; eps = 0.001;
f = @(x)1+x.*sin(x);
y = f(x);
plot(x, f(x), x, 0*x, ':'); grid on
hold on
y_min = min(y); y_max = max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
z = ginput(2); z1 = z(1, 1); z2 = z(2, 1);
f1 = f(z1); f2 = f(z2); z = (z1 + z2) / 2; y = f(z);
P = plot(z1, 0, 'r*', z2, 0, 'g*', z, 0, 'o');
if f1*f2 > 0 'Wrong points'
end
for i=1:iter
     z = (z1 + z2) / 2;
     delete(P);
     P = plot(z1, f(z1), 'r*', z2, f(z2), 'g*', z, f(z), 'o');
     if f(z)*f(z1)<0
         z2 = z;
     else z1 =z;
     end
     if abs(f(z)) < eps break;
     end
end
hold off
%% 1.b
%% Метод Ньютона
clear;
a = 0; b = 14;
m = 50; x = linspace(a, b, m);
h = 0.001; iter = 5; eps = 0.001;
f = @(x)sin(x)./x;
y = f(x);
plot(x, f(x), x, 0*x, ':'); grid on
hold on
y_min = min(y); y_max = max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
y_lim = ([y_min, y_max]);
z = ginput(1);
x1 = z(1);
for i=1:iter
    yh = (f(x1+h)-f(x1))/h;
    x2 = x1 - f(x1)/yh;
    P = plot(x, f(x1)+yh*(x-x1), ':', x1, f(x1), '*', x2, 0, '*', x2, f(x2), 'o');
    L = line([x2, x2], [0, f(x2)]);
    set(L, 'LineStyle', ':');
    x1 = x2;
    if abs(f(x2))<eps break;
    end
    pause
    delete(P, L);
end
hold off
'End Iteration';
%% Метод деления пополам
clear;
a = 0; b = 14;
m = 50; x = linspace(a, b, m);
h = 0.001; iter = 25; eps = 0.001;
f = @(x)sin(x)./x;
y = f(x);
plot(x, f(x), x, 0*x, ':'); grid on
hold on
y_min = min(y); y_max = max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
z = ginput(2); z1 = z(1, 1); z2 = z(2, 1);
f1 = f(z1); f2 = f(z2); z = (z1 + z2) / 2; y = f(z);
P = plot(z1, 0, 'r*', z2, 0, 'g*', z, 0, 'o');
if f1*f2 > 0 'Wrong points'
end
for i=1:iter
     z = (z1 + z2) / 2;
     delete(P);
     P = plot(z1, f(z1), 'r*', z2, f(z2), 'g*', z, f(z), 'o');
     if f(z)*f(z1)<0
         z2 = z;
     else z1 =z;
     end
     if abs(f(z)) < eps break;
     end
end
hold off
%% 1.c
%% Метод Ньютона
clear;
a = 0; b = 2*pi;
m = 50; x = linspace(a, b, m);
h = 0.001; iter = 5; eps = 0.001;
f = @(x)1+(1+sin(x)-cos(x)).^2 - (sin(2*x)-cos(2*x)-0.2).^2;
y = f(x);
plot(x, f(x), x, 0*x, ':'); grid on
hold on
y_min = min(y); y_max = max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
y_lim = ([y_min, y_max]);
z = ginput(1);
x1 = z(1);
for i=1:iter
    yh = (f(x1+h)-f(x1))/h;
    x2 = x1 - f(x1)/yh;
    P = plot(x, f(x1)+yh*(x-x1), ':', x1, f(x1), '*', x2, 0, '*', x2, f(x2), 'o');
    L = line([x2, x2], [0, f(x2)]);
    set(L, 'LineStyle', ':');
    x1 = x2;
    if abs(f(x2))<eps break;
    end
    pause
    delete(P, L);
end
hold off
'End Iteration';
%% Метод деления пополам
clear;
a = 0; b = 2*pi;
m = 50; x = linspace(a, b, m);
h = 0.001; iter = 25; eps = 0.001;
f = @(x)1+(1+sin(x)-cos(x)).^2-(sin(2*x)-cos(2*x)-0.2).^2;
y = f(x);
plot(x, f(x), x, 0*x, ':'); grid on
hold on
y_min = min(y); y_max = max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
z = ginput(2); z1 = z(1, 1); z2 = z(2, 1);
f1 = f(z1); f2 = f(z2); z = (z1 + z2) / 2; y = f(z);
P = plot(z1, 0, 'r*', z2, 0, 'g*', z, 0, 'o');
if f1*f2 > 0 'Wrong points'
end
for i=1:iter
     z = (z1 + z2) / 2;
     delete(P);
     P = plot(z1, f(z1), 'r*', z2, f(z2), 'g*', z, f(z), 'o');
     if f(z)*f(z1)<0
         z2 = z;
     else z1 =z;
     end
     if abs(f(z)) < eps break;
     end
end
hold off