function [x,y] = EIm(f,Xr,Yinit,h)
x(1) = Xr(1);
y(:,1) = Yinit(:);

Nstep = floor((Xr(2)-Xr(1))/h);

for k=1:Nstep
    x(k+1) = x(k) +h;
    %estimer y(:,k+1) par un algo de point fixe/newton.
    y(:,k+1) = algoPointFixe(f,h,y(:,k),x(k),y(:,k));
    y(:,k+1) = y(:,k) + h * f(x(k),y(:,k+1));
end
end