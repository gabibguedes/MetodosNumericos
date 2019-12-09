clear all

disp("Questao 1:")

disp("Euler:")

h = 0.5;
y0 = -1;
t0 = 0.5;
t = t0 ;
y = y0;

i = 0;

disp(['t', num2str(i), ' : ', num2str(t0) ])
disp(['y', num2str(i), ' : ', num2str(y0) ])

for i = 1 : 3
	fxy = t**3 + y;
	y = y + (fxy * h);
	t = t + h;
	disp(['t', num2str(i), ' : ', num2str(t)])
	disp(['y', num2str(i), ' : ', num2str(y)])
end


disp("Euler:\n")


h = 0.5;
y0 = -1;
t0 = 0.5;
t = t0 ;
y = y0;

i = 0;

disp(['t', num2str(i), ' : ', num2str(t0) ])
disp(['y', num2str(i), ' : ', num2str(y0) ])

for i = 1 : 3
	fxy = t**3 + y;
	ym = y + (fxy * h/2);
	tm = t + (h/2); 
	fxym = tm**3 + ym;
	y = y + (fxym * h);
	t = t + h;
	disp(['t', num2str(i), ' : ', num2str(t)])
	disp(['y', num2str(i), ' : ', num2str(y)])
end


disp("O resultado é:")
disp("---------------")
disp("Questao 2:")

disp("---------------")
