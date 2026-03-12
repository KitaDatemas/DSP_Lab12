function y = unit_ramp(x)
    if x >= 0 then
        y = x;
    else
        y = 0;
    end
endfunction

n=-5:5;
plot(n, unit_ramp)
