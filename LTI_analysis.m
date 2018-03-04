function h = LTI_analysis(zer, pol, x_length)


    figure
    zplane(zer, pol);
    title('zeros and poles');


    x = 0:x_length - 1;
    delta = @(n) n == 0;
    step = @(n) n >= 0;
    impulsion_delta = arrayfun(delta, x);

    %impulse response plot by convolution
    figure;

    subplot(3,1,1);
    impul_1 = filter(zer, pol, impulsion_delta);
    stem(x, impul_1, 'filled');
    title('Impulse response by convolution');
    xlabel('n (samples)');
    ylabel('Amplitude');

    %impulse response plot by direct computing
    subplot(3,1,2);
    impz(zer, pol, x_length);

    %expression of the impulse response 
    [num, denom, rest] = residuez(zer, pol);
    h = @(n) sum(num.*( denom.^n ) * step(n)) + sum(rest)*delta(n);

    h_n = arrayfun(h, x);

    subplot(3,1,3);
    stem(x, h_n, 'filled')
    title('Impulse response by inverse Z-transform');
    xlabel('n (samples)');
    ylabel('Amplitude');

end
