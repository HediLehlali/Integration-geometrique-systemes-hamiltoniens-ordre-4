x0=[2;2;2;4];
N=1500;
t=1:N;
h=5e-7;
A=2;
B=3;
[x1,x2,x3,x4] = flots_inteLC(x0,h,N);

%On trace x1, x2, x3 en fonction du temps avec le code :
plot(t,x1,t,x2,t,x3,t,x4);

%pour le 3D
%Y=[x1;x2;x3;x4];
%surf(Y);

%figure;
%plot3(x1,x2,x3,x4) %diagramme de phase
