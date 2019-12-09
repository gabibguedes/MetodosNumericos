clear all
format long

fprintf('Exercício 1 \n');

x = 12;
f = (exp(x)  -1 )/ x;

fprintf('f(x) para x igual a  12:');
disp(f);

mao = 13562.815951;
erro = abs((mao - f)/mao);

fprintf('Erro relativo = ');
disp(erro);
fprintf('\n\n');

fprintf('Exercício 2 \n');

fprintf('Série de Taylor de e^x com x=2 \n\n');

x = 2;
e = exp(x);

a = 0;
for(i=0:4)
    a = a + (x ^ i)/factorial(i);
end
fprintf('a) Para os 4 primeiros termos = %f \n', a);
erro = abs((a - e)/a);
fprintf('Erro relativo = %i \n\n', erro);


b = 0;
for(i=0:6)
    b = b + (x ^ i)/factorial(i);
end
fprintf('b) Para os 6 primeiros termos = %f \n', b);
erro = abs((b - e)/b);
fprintf('Erro relativo = %i \n\n', erro);


c = 0;
for(i=0:8)
    c = c + (x ^ i)/factorial(i);
end
fprintf('c) Para os 8 primeiros termos = %f \n', c);
erro = abs((c - e)/c);
fprintf('Erro relativo = %i \n', erro);

