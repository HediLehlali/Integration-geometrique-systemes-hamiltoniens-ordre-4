function y = f(x)
% x est un vecteur de taille 4

y=zeros(4,1); % initialisation de y

C = 2.2e-4;
L1 = 1.8e-2;
L2 = 0.8e-2;
L3 = 1.3e-3;

A = 2;
B = 3;

%ici on définit f comme le produit de J avec dH0 :

y(1) = B*x(4)/C;
y(2) = A*x(4)/C;
y(3) = x(4)/C;
y(4) = -B*x(1)/L1 - A*x(2)/L2 - x(3)/L3;
end
