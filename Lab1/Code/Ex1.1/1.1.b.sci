for i=1:4
    x(i) = i;
end

for i=5:8
    y(i - 4) = i;
end

disp([x(1)*y(1), x(2)*y(2), x(3)*y(3), x(4)*y(4)])
