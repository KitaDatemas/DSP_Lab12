n_orig = -2:1;
x = [1, -2, 3, 6];

clf();

n1 = -1:2;
y1 = flipdim(x, 2); 
subplot(3,1,1); 
plot2d3(n1, y1); 
plot(n1, y1, "ro"); 
title("y1(n) = x(-n)");

n2 = n_orig - 3; 
y2 = x; 
subplot(3,1,2); 
plot2d3(n2, y2); 
plot(n2, y2, "bo"); 
title("y2(n) = x(n+3)");

y3 = 2 * y1; 
subplot(3,1,3); 
plot2d3(n3, y3); 
plot(n3, y3, "ko"); 
title("y3(n) = 2x(-n-2)");
xs2png(gcf(), "ex2.8.png")
