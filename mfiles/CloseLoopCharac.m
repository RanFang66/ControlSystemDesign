function [bw, wr, mr] = CloseLoopCharac(sys)
    [mag, pha, w] = bode(sys);
    mr = max(mag);
    index_r = find(mag == mr);
    wr = w(index_r);
    bw = bandwidth(sys);
    figure(100)
    bodeplot(sys);
end