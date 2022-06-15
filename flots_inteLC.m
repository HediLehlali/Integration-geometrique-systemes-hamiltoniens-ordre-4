function[x1,x2,x3,x4]= flots_inteLC(x0,h,N)

x1=zeros(1,N);
x2=zeros(1,N);
x3=zeros(1,N);
x4=zeros(1,N);

x1(1)=x0(1);
x2(1)=x0(2);
x3(1)=x0(3);
x4(1)=x0(4);

A=2;
B=3;

    for k= 2:N

 %phi[2]_h/2
        temp1x1=B*dH0_2(x4(k-1))*(h/2)+x1(k-1);
        temp1x2=A*dH0_2(x4(k-1))*(h/2)+x2(k-1);
        temp1x3=dH0_2(x4(k-1))*(h/2)+x3(k-1);

%phi^1_h
        x4(k)=(-B)*dH0_1(temp1x1)*h-A*dH0_1(temp1x2)*h-dH0_1(temp1x3)*h+x4(k-1);

%phi^2_h/2
        x1(k)=B*dH0_2( x4(k))*(h/2)+temp1x1;
        x2(k)=A*dH0_2( x4(k))*(h/2)+temp1x2;
        x3(k)=dH0_2( x4(k))*(h/2)+temp1x3;

    end
end