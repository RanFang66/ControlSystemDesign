%% The model of system
% Gol is the open loop transfer function
% Gcl is the close loop transfer function


Gc = kp + ki/s;
Gvalve = kv / (Tv*s+1);

Gol = Gc*Gvalve;
Gcl = Gol/(1+Gol);
