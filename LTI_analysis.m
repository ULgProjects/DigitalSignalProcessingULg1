%% 
%   Question 1
%   Analyses the poles, zeros and impulse response given by an
%   trenasfer function.
%   The study is done with x_length samples.
%


function h = LTI_analysis(zer, pol, x_length)

    poles_zeros_plot(zer, pol);

    x = 0:x_length - 1;
    impulsion_delta = arrayfun(@(n) n == 0, x);

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
    h = impulse_response(zer, pol);
    
    h_n = arrayfun(h, x);

    subplot(3,1,3);
    stem(x, h_n, 'filled');
    title('Impulse response by inverse Z-transform');
    xlabel('n (samples)');
    ylabel('Amplitude');

end
