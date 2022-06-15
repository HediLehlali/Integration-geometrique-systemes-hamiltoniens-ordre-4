Yinit = [2,2,2,4]; % on prend x0 qui respecte Casimir
Xr = [0.5,1];

N = 1000;
%t = 1:N+1;
h = 5e-6;


[t,y] = EEx(Xr,Yinit,h);

%% diagramme de phase

figure;

subplot(2,3,1);
plot(y(1,:),y(2,:));

subplot(2,3,2);
plot(y(1,:),y(3,:));

subplot(2,3,3);
plot(y(1,:),y(4,:));

subplot(2,3,4);
plot(y(2,:),y(3,:));

subplot(2,3,5);
plot(y(2,:),y(4,:));

subplot(2,3,6);
plot(y(3,:),y(4,:));

figure;
plot3(y(1,:),y(2,:), y(4,:));
