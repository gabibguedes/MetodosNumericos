clear all

% Exercicio 1
a = 0;
b = 0.8;
fa = 1;
fb = 2.6965;

fc = (fa + fb)/2;
resp = fc * (b - a);

disp('Exercicio 1:');
disp('A resposta da integral é:');
disp(resp);
disp('----------');

% Exercicio 2

% Função:
function y = f(x)
    y = 3 * (x^3) - 3 * x + 1;
end

% 2a derivada da função
function y = f2(x)
    y = 18 * x;
end

% Calculo da integral por trapezio
function  y = trapezio(xn, x0, n)
    h = (xn - x0)/n;
    x = x0 + h;
    sum = 0;
    for i=1:(n-1)
        sum = sum + f(x);
        x = x + h;
    end
    resp = h * ((f(x0) + f(xn))/2 + sum);
    disp('O resultado da integral da função f é:');
    disp(resp);

    err = n * ((h^3)/12) * f2(xn);

    disp("O erro é menor que:");
    disp(err);
end

disp('Exercicio 2:');
trapezio(4, 0, 4);
disp('----------');

% Exercicio 3
a = 0;
b = 1;

fa = exp(a);
fb = exp(b);
iTrapezio = ((fa + fb) / 2) * (b - a);

h = 1/10;
medium = (a + b) / 2;
fMedium = exp(medium);
iSimpson = (h / 3) * (fa + (4*fMedium) + fb);

disp('Exercício 3:');
disp('a) Resultado pela fórmula do Trapézio:');
disp(iTrapezio);
disp('b) Resultado pela formula de Simpson 1/3:');
disp(iSimpson);
disp('----------');


% Exercício 4

c1 = 1;
c2 = 1;
t1 = -0.57735027;
t2 = 0.57735027;

ft1 = exp(-5*(t1+1));
ft2 = exp(-5*(t2+1));

ift = c1*ft1+c2*ft2;
ifx = 5 * ift;

disp('Exercício 4:');
disp('O resultado da integral é:');
disp(ifx)
disp('----------');
