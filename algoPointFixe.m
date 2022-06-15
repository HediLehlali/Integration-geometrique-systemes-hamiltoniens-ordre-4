function estim1 = algoPointFixe(f,h,yk,xk,estim0)
k = 0;
estim1 = yk + h * f(xk,estim0);
eps = 1e-6;
while ( (norm(estim1 - estim0) > eps)  &&  (k < 1000) )
    estim0 = estim1;
    estim1 = yk + h * f(xk,estim0);
    k = k+1;
end
end