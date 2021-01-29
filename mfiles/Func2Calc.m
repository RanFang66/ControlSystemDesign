function F = Func2Calc(x, fc, Pm)

kp = x(1);
ki = x(2);
s = 2*pi*fc*1i;

SysParaInit;

SysModel;

F1 = abs(Gcl) - 0.707;
F2 = angle(Gol)/pi*180 + 180 - Pm;

F = [F1; F2];
end