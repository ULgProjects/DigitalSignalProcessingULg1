%% Question 1

pol = [1 0 0 1/4 -1/8];
zer = [1 1 0 0 0];
x_length = 10;

h = LTI_analysis(zer, pol, x_length);

%syms n;
%display(vpa(h(n),3));

%% Question 2 
length = 20;
u = @(n) 0.25^n * (n >= 0);

%a
[h1, y1] = LTI_sollicitation([1 1], [1 -0.5], length, u);













