close all

SysParaInit;
PICalc;

% controller time delay
Gd1 = tf([1], [3/2*Tc, 1]);

% sample delay
Gd2 = tf([1], [Ts, 1]);

% trans function of valve
Gvalve = tf([kv], [Tv, 1]);

% controller transfunc
Gc = tf([kp ki], [1, 0]);

% open loop;
Gol = Gc*Gd1*Gvalve*Gd2;

% close loop
Gcl = feedback(Gc*Gd1*Gvalve, Gd2);

% feed forward
Gff = tf([1/kv],[1]);

% total
Gg = series((1+Gff/Gc), Gcl);

% calculate bandwidth and ess
[tr, ts, tm, ov, ess] = StepResponse(Gcl, 1)
[bw, wr, mr] = CloseLoopCharac(Gcl)
[wc,wg,Gm, Pm] = OpenLoopCharac(Gol)
% stepplot(Gcl, [0:0.0001:0.1]);