function x_a = analog(t)
    x_a = 3 * sin(100 * %pi * t)
endfunction

function x_a = digital(n)
    x_a = 3 * sin((1 / 3) * %pi * n);
endfunction

function y = truncated_quantize(n)
    y = floor(3 * sin ((1 / 3) * %pi * n) / 0.1) * 0.1;
endfunction

t = linspace(0, 0.1, 500)
clf
subplot(3,1,1)
xtitle("Analog signal","t","x")
plot(t, analog)

n = 0:29
y_digital = digital(n)
subplot(3,1,2)
xtitle("Digital signal","n","x")
plot(y_digital, ".r")

y_quantization = truncated_quantize(n)
subplot(3,1,3)
xtitle("Truncated signal","n","x")
plot(y_quantization, ".black")
