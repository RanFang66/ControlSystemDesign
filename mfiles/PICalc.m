fc = 100;   %Hz
Pm = 60;    %degree
% sigma = 13;
% x_0 = 1.0;
% y = fsolve(@(y) phase_margin(y, sigma), x_0);

x_init = [1; 1];
[x, err] = fsolve(@(x) Func2Calc(x, fc, Pm), x_init);
kp = x(1)
ki = x(2)
err