function [wc,wg,Gm, Pm] = OpenLoopCharac(sys)
    [mag, pha, w] = bode(sys);
    
    [Gm, Pm, wc, wg] = margin(mag, pha, w);
    figure(20)
    bodeplot(sys)
end