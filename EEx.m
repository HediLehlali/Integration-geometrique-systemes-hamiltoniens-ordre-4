function [x,y] = EEx(Xr,Yinit,h)
x(1) = Xr(1);
y(:,1) = Yinit(:);

Nstep=(Xr(2)-Xr(1))/h;

for k=1:Nstep
    x(k+1) = x(k)+h;
    y(:,k+1) = y(:,k)+h*f(y(:,k));
end
end
