function [tr, ts, tm, ov, ess] = StepResponse(sys, drawflag)
    if nargin > 2
        error('too many arguments');
        return;
    end

    [y, t] = step(sys);

    if nargin == 2 && drawflag == 1
        figure(10)
        stepplot(sys);
    end
    
    index_r = find(y>0.9);
    tr = t(index_r(1));
    
    index_s = find((y > 0.97) & (y < 1.03));
    ts = t(index_s(1));
    
    [m, i] = max(y);
    ov = (m-1) * 100;
    tm = t(i);
    
    ess = (1 - y(end))*100;
    
    
end