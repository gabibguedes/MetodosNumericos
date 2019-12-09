clear

x = 3.99;

Qc = [ 0 6.67 16.93 23.38 27.44 29.02 29.5 29.29 27.17 24.58 21.43 18.56 16.61 16.01 16.87 18.06 19.51 21.42 22.99 24.05 24.12 23.35 22.5 21.53 20.33 19.44 18.98 19.36];

f1 = [2:27];
t = [2:27];
i = 2;

while (i < 28)
    f1(i-1) = (Qc(i+1) - Qc(i-1)) / 2 * x;
    t(i-1) = 3.99 * i;
    i = i + 1;
end
plot(t,f1);