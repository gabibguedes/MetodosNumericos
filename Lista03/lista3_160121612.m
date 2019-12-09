% Gabriela Barrozo Guedes
% 16/0121612

clear all
format long

fprintf('Exercício 1:\n\n');
a = [1, 2, -2; 
     2, 3, 1;
     3, 2, -4];

b = [9; 23; 11];

% ab = matriz aumentada
ab = [a, b];

disp('Matriz inicial:');
disp(ab);

for (k=1:size(a)-1)
    % Diagonal da matriz (é onde ficam os pivos)
    d = reshape(diag(ab), 1, []);
    
    % Inicializa as variaveis necessárias
    ab1 = ab;
    pivo = d(k);
    m = [];

    % Calcula os m's necessários
    for (i=(k + 1):size(a))
        m(i - k) = ab(i,k)/pivo;
        end

    % Atualiza os valores das linhas
    for (l = (k+1):size(a))
        ml = m(l - k);
        for (c =1:4)
            ab1(l,c) = ab(l,c) - ml * ab(k,c);
            end
        end

    % Iguala a nova matriz a antiga
    ab = ab1;

    fprintf('\nMatriz %d:\n',k );
    disp(ab);
    end
% Resolução
x3 = ab(3,4)/ab(3,3);
x2 = ((ab(2,3) * x3) + ab(2,4))/ab(2,2);
x1 = ((ab(1,2) * x2) + (ab(1,3) * x3) + ab(1,4))/ab(1,1);

fprintf('\nResposta:\n');
fprintf('x1 = %f\n', x1);
fprintf('x2 = %f\n', x2);
fprintf('x3 = %f\n', x3);



fprintf('\n\nExercício 2:\n\n');
disp('Resolução com o método de Gauss-Seidel');

% Iguala as variáveis com 0
i1=0;
i2=0;
i3=0;
i4=0;
i5=0;
i6=0;
i7=0;

% Faz 7 interações atualizando os valores das variáveis
for(i=0:8)
    i1 = (20 + (4 * i2) + i4)/8;
    i2 = (-12 + (4 * i1) + (2.5 * i3) + (5* i5))/11.5;
    i3 = (14 + (2.5 * i2) + (2 * i6))/4.5;
    i4 = (8 + i1 + (2*i5))/3;
    i5 = (-30 + (5 * i2) + (2 * i4) + (1.5 * i6))/8.5;
    i6 = ((2 * i3) + (1.5 * i5))/8;
    end


fprintf('\ni1 = %f\n', i1);
fprintf('i2 = %f\n', i2);
fprintf('i3 = %f\n', i3);
fprintf('i4 = %f\n', i4);
fprintf('i5 = %f\n', i5);
fprintf('i6 = %f\n', i6);
