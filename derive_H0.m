function [y] = dH0_a(x)
L1=1.8*10^(-2);
y=x/L1;
end

function [y] = dH0_b(x)
L2=0.8*10^(-2);
y=x/L2;
end

function [y] = dH0_c(x)
L3=1.3*10^(-3);
y=x/L3;
end

function [y] = dH0_1(x)
y=dH0_a(x)+dH0_b(x)+dH0_c(x);
end

function [y] = dH0_2(x)
C=2.2*10^(-4);
y=x/C;
end
