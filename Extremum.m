%% Экстремумы
%% 1.b
clear;
x = linspace(0, 2*pi/3, 100);
a = 1; b =2;
f = @(x)1./((a.*cos(x)+b.*sin(x)).^2);
y = f(x);
a1 = num2str(a); b1 = num2str(b);
T = ['1/((a cos(x)+b sin(x))^2), a= ', a1, 'b=', b1];
plot(x, y); grid on; axis([0, 2.5, 0, 1]);
xlabel('x'); ylabel('y'); title(T)
xr = ginput(2);
[x_m, y_m] = fminbnd(f, xr(1, 1), xr(2, 1));
hold on
plot(x_m, y_m, 'r*', xr(1, 1), f(xr(1, 1)), 'g*', xr(2, 1), f(xr(2, 1)), 'g*');
hold off
%% 1.c
clear;
x = linspace(0, 4, 100);
a = 0; b =4;
f = @(x)2-abs(x).*exp(-abs(x-1));
y = f(x);
T = ['2-abs(x)*exp(-abs(x-1))'];
plot(x, y); grid on; axis([0, 4, 0, 2]);
xlabel('x'); ylabel('y'); title(T)
xr = ginput(2);
[x_m, y_m] = fminbnd(f, xr(1, 1), xr(2, 1));
hold on
plot(x_m, y_m, 'r*', xr(1, 1), f(xr(1, 1)), 'g*', xr(2, 1), f(xr(2, 1)), 'g*');
hold off
%% 1.d
clear;
x = linspace(0, 7, 100);
a = 0; b =2*pi;
m = 3;
f = @(k, x)(cos(k.*x)-sin(k.*x)).^2;
y = 0;
for k=1:m
    y = y+f(k, x);
end;
T = ['sum(cos(kx)-sin(kx))^2'];
plot(x, y); grid on; axis([0, 7, 0, 10]);
xlabel('x'); ylabel('y'); title(T)
xr = ginput(2);
k=1;
[x_m, y_m] = fminbnd(@(x) f(k, x)+f(k+1, x)+f(k+2, x), xr(1, 1), xr(2, 1));
hold on
plot(x_m, y_m, 'r*', xr(1, 1), f(1, xr(1, 1))+f(2, xr(1, 1))+f(3, xr(1, 1)), 'g*', xr(2, 1), f(1, xr(2, 1))+f(2, xr(2, 1))+f(3, xr(2, 1)), 'g*');
hold off
%% 1.e
clear;
x = linspace(0, 7, 100);
a = 0; b =2*pi;
m = 4;
d = [3, 5, 2, -1];
f = @(k, x)(d(k) - sin(k.*x)).^2;
y = 0;
for k=1:m
    y = y+f(k, x);
end;
T = ['sum(d(k)-sin(k*x))^2'];
plot(x, y); grid on; axis([0, 7, 20, 60]);
xlabel('x'); ylabel('y'); title(T)
xr = ginput(2);
k=1;
[x_m, y_m] = fminbnd(@(x) f(k, x)+f(k+1, x)+f(k+2, x)+f(k+3, x), xr(1, 1), xr(2, 1));
hold on
plot(x_m, y_m, 'r*', xr(1, 1), f(1, xr(1, 1))+f(2, xr(1, 1))+f(3, xr(1, 1))+f(4, xr(1, 1)), 'g*', xr(2, 1), f(1, xr(2, 1))+f(2, xr(2, 1))+f(3, xr(2, 1))+f(4, xr(2, 1)), 'g*');
hold off
%% 2.a
clear;
x = linspace(0, 1, 100);
a = 0; b =2*pi;
m = 3;
f = @(al, x)x.^al.*log(x);
y = 0;
hold on
for k=1:m
    y = f(2^k, x);
    plot(x, y); grid on; 
end;
T = ['x^a ln x'];
plot(x, y); grid on; 
xlabel('x'); ylabel('y'); title(T)
[x_m, y_m] = fminbnd(@(x) f(2, x), 0, 7);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(4, x), 0, 7);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(8, x), 0, 7);
plot(x_m, y_m, 'r*');
hold off
%% 2.b
clear;
x = linspace(0, 1, 100);
m = 3;
f = @(a1, b1, x)x.^a1.*exp(-b1.*x);
hold on
y = f(2, 1, x);
plot(x, y);
y = f(2, 2, x);
plot(x, y);
y = f(4, 1, x);
plot(x, y);
y = f(4, 2, x);
plot(x, y);
y = f(8, 1, x);
plot(x, y);
y = f(8, 2, x);
plot(x, y);
[x_m, y_m] = fminbnd(@(x) f(2, 1, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(2, 2, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(4, 1, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(4, 2, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(8, 1, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(8, 2, x), 0, 1);
plot(x_m, y_m, 'r*');
hold off
%% 2.c
clear;
x = linspace(0, 1, 100);
m = 3;
f = @(a1, b1, x)x.^a1.*(1-x).^b1;
hold on
y = f(2, 1, x);
plot(x, y);
y = f(2, 2, x);
plot(x, y);
y = f(4, 1, x);
plot(x, y);
y = f(4, 2, x);
plot(x, y);
y = f(8, 1, x);
plot(x, y);
y = f(8, 2, x);
plot(x, y);
[x_m, y_m] = fminbnd(@(x) f(2, 1, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(2, 2, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(4, 1, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(4, 2, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(8, 1, x), 0, 1);
plot(x_m, y_m, 'r*');
[x_m, y_m] = fminbnd(@(x) f(8, 2, x), 0, 1);
plot(x_m, y_m, 'r*');
hold off
%% 3
%% fminsearch позволяет искать минимум у функции с несколькими переменными, без производных. 
%% 4
%% optimset позволяет увидеть значения по умолчанию для fminbnd
