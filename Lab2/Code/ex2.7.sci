n = -1:3;
x1 = [0, 0, 1, 3, -2]; 
x2 = [0, 1, 2, 3, 0];
y = x1 .* x2; 

clf();
subplot(3,1,1); 
plot2d3(n, x1); 
plot(n, x1, "ro"); 
title("x1(n)");

subplot(3,1,2); 
plot2d3(n, x2); 
plot(n, x2, "go"); 
title("x2(n)");

subplot(3,1,3); 
plot2d3(n, y); 
plot(n, y, "mo");
title("y(n) = x1(n) * x2(n)");
xs2png(gcf(), "ex2.7.png")
