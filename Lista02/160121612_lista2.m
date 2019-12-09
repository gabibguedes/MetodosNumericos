clear all
format long

disp('Exercicio 1: Metodo de Newton');

global a = 3.90802 * 10^(-3);
global b = 0.580195 * 10^(-6);

% Equação do problema:
function r = R(t)
    global a;
    global b;
    r = 100*(1+(a*t)-(b*t^2))-200;
end

% Derivada da equação do problema
function r = R1(t)
    global a;
    global b;
    r = 100*(a - (2*b*t));
end

% T inicial = 2
t = 2;

% Loop até encontrar o zero
while(R(t) != 0)
    % Atualiza o t
    nt = t - (R(t)/R1(t));
    t = nt;
end

disp(t);

disp('Exercicio 2: Metodo da Bisseção');

% Equação do problema
function f = func(o)
    g = 9.8;
    v0 = 15.2;
    x = 18.2;
    h = 1.82;
    y = 2.1;
    f = x * tan(o) - (1/2) * ((x^2*g)/ (v0^2)) * (1/cos(o)^2) + h - y;
end

% Achar elemento central
function x = Xnsi(a,b)
    x = (a + b)/2;
end

% Pontos iniciais
a = 180;
b = - 180;

% Margem de erro
e = 0.000001;

% 1o X
x = Xnsi(a,b);

% Loop até encontrar o zero
while(abs(func(x)) > e)
    % Encontra o novo intervalo
    if (func(x)*func(a) < 0)
        b = x;
    else
        a = x;
    end

    % Calcula o novo X
    x = Xnsi(a,b);
end

disp(func(x));
