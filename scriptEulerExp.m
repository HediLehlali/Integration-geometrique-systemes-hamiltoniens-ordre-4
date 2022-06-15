%% Paramètres initiaux
Yinit = [2,2,2,4]; % on prend x0 qui respecte Casimir
Xr = [0.5,1];

N = 1000;
%t = 1:N+1;
h = 5e-6;

C = 2.2e-4;
L1 = 1.8e-2;
L2 = 0.8e-2;
L3 = 1.3e-3;

A = 2;
B = 3;

[t,y] = EEx(Xr,Yinit,h);


%% On trace maintenant l'ensemble des variables selon le temps :
figure;

plot(t,y(1,:), t,y(2,:), t,y(3,:), t,y(4,:));
grid on;
legend('\phi_{L1}', '\phi_{L2}', '\phi_{L3}', 'Q_c', 'Location', 'NorthWest');
title('y integré avec Euler explicite pour h = ', h);

%% On va maintenant regarder les invariants :
figure;

subplot(1,3,1);
plot(t, y(1,:) - 3*y(3,:));
grid on;
title('C_1 , 1er invariant');

subplot(1,3,2);
plot(t, y(2,:)- 2*y(3,:));
grid on;
title('C_2 , 2ème invariant');

subplot(1,3,3);
plot(t, (y(1,:).*y(1,:))/(2*L1) + (y(2,:).*y(2,:))/(2*L2) + (y(3,:).*y(3,:))/(2*L3) + (y(4,:).*y(4,:))/(2*C));
grid on;
title('H_0 , 3ème invariant');

%% Diagramme de phase

figure;

subplot(1,2,1);
plot(y(1,:), y(4,:));
grid on;
title('Diagramme de phase de \phi_{L1} selon Q_c');
xlabel('\phi_{L1}');
ylabel('Q_c');

subplot(1,2,2);
plot(y(2,:), y(4,:));
grid on;
title('Diagramme de phase de \phi_{L2} selon Q_c');
xlabel('\phi_{L2}');
ylabel('Q_c');






