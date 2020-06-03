%% Полиномы
%% 1
P = [1, -3.55, 5.1, -3.1];
x = linspace(-10, 10, 1000);
plot(X, polyval(P, x));
%% 2
clear;
P1 = [2, -3, 4, -5, 6]; p1 = [1, -3, 1];
P2 = [1, -3, -1, -1]; p2 = [3, -2, 1];
[Q1, R1] = deconv(P1, p1);
[Q2, R2] = deconv(P2, p2);
%% 3
clear;
P = [1, -2, 6, -10, 16];
x0 = 4;
fx0 = (((P(1)*x0 + P(2))*x0 + P(3))*x0 + P(4))*x0 + P(5);
polyval(P, x0); 
p = Polyder(P);
x0_ = 4;
fxo_ = ((p(1)*x0_ + p(2))*x0_ + p(3))*x0_ + p(4);
%% 4
n = input('n = ');
P = [1, zeros(1, n-2), [-n], [0], n, zeros(1, n-2), -1];
rts = intersect(roots(P), roots(polyder(P)))                        
x = linspec(rts(1), rts(length(rts)), 100)
F = polyval(P, x)
plot(x, F, rts, polyval(P, rts), '*')
%% 5
clear;
P = [1, 0, 0];
p1 = [1, -1]; p2 = [1, 2]; p3 = [1, 3];
[r, p, K] = residue(P, conv(conv(p1, p2), p3));
%%
clear;
P = [1, 3];
p1 = [1, -1]; p2 = [1, 0, 1];
[r, p, K] = residue(P, conv(p1, p2));
%%
clear;
P = [1, 0, 0];
p1 = [1, 0, 0, 0, -1];
[r, p, K] = residue(P, p1);
%%
clear;
P = [1, 0, 0];
p1 = [1, -1]; p2 = [1, 2]; p3 = [1, 3];
[r, p, K] = residue(P, cond(conv(p1, p2), p3));
%% 9
clear;
P = [1 2 -1 -4 -2];
Q = [1 1 -1 -2 -2];
gcd(P, Q);
%%
clear;
P = [1 3 1 1 3 1];
Q = [1 2 1 2];
gcd(P, Q);
