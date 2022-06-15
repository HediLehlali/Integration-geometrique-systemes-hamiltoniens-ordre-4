%% Paramètres initiaux
Yinit = [2,2,2,4]; % on prend x0 qui respecte Casimir
Xr = [0,1];

N = 1000;
t = 1:N;
h = 5e-6;

%% On intègre y avec flots_inteLC et on plot

[x1,x2,x3,x4] = flots_inteLC(Yinit, h, N);

figure;
plot(t, x1, t, x2, t, x3, t, x4);
ylim([-15,15]);
grid on;
legend('\phi_{L1}', '\phi_{L2}', '\phi_{L3}', 'Q_c', 'Location', 'NorthWest');
title('y integré avec flots intégrables pour h = ', h');
xlabel('Temps');
ylabel('y');

%% Diagramme de phase

figure;
[x1,x2,x3,x4] = flots_inteLC(Yinit,h,N);

subplot(1,2,1);
plot(x1,x4);
grid on;
title('Diagramme de phase de \phi_{L1} selon Q_c');
xlabel('\phi_{L1}');
ylabel('Q_c');

subplot(1,2,2);
plot(x2,x4);
grid on;
title('Diagramme de phase de \phi_{L2} selon Q_c');
xlabel('\phi_{L2}');
ylabel('Q_c');

%% Invariants dynamiques

H0 = zeros(1,N) ;
C1 = zeros(1,N) ;
C2 = zeros(1,N) ;

Y=[x1; x2; x3; x4];

C=2.210^(-4) ;
L3=1.310^(-3) ;
L2=0.810^(-2) ;
L1=1.810^(-2) ;

for i =1:N
    H0(i) = (Y(4,i)^2)*(2*C) + (Y(1,i)^2)/(2*L1 ) + (Y(2,i)^2)/(2*L2) + (Y(3,i)^2)/(2*L3);
end

for i = 1:N
    C1(i) = Y(1,i) - B*Y(3,i); % Calcul de casimir avec son expression
end

for i =1:N
    C2(i) = Y(2,i) - A*Y(3,i) ; % Calcul de Casimir avec son expression
end

figure;

subplot(1,3,1);
plot(C1)
grid on;
title('C_1, invariant dynamique pour un pas h = ', h);
legend('C_1');
xlabel('x');
ylabel('C_1');


subplot(1,3,2);
plot(C2)
grid on;
title('C_2, invariant dynamique pour un pas h = ', h);
legend('C_2');
xlabel('x');
ylabel('C_2');

subplot(1,3,3);
plot(H0);
grid on;
title('H_0, invariant dynamique pour un pas h = ', h);
legend('H_0');
xlabel('x');
ylabel('H_O');
