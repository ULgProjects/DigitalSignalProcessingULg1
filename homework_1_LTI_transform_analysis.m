%% Question 1

syms n;

pol = [1 0 0 1/4 -1/8];
zer = [1 1 0 0 0];
x_length = 10;

h = LTI_analysis(zer, pol, x_length);
display(vpa(h(n),3));

%% Question 2 
length = 20;
x_n = @(n) 0.25^n * heaviside(n);
x = arrayfun(x_n, 0:length);

%a
pol_1 = [1 -0.5];
zer_1 = [1 1];

h_1 = LTI_analysis(zer_1, pol_1, length);
y_1 = filter(zer_1, pol_1, x);
figure 
stem(0:length, y_1);
title('y1[n]');
xlabel('n (samples)');
ylabel('Amplitude');













