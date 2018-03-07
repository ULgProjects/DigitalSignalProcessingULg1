%%
%   Question 2 for causal systems

function [h, g] = LTI_sollicitation(zer, pol, x_length, u)
    %poles and zero plot
    poles_zeros_plot(zer, pol);
    
    figure;
    
    %impulse response compute + plot
    h = impulse_response(zer, pol);
    subplot(2,1,1)
    impz(zer, pol, x_length);
    
    %sollicitation computing + plot
    %%%%%% Computing??
    
    subplot(2,1,2)
    y =  filter(zer, pol, arrayfun(u, 0:x_length));
    stem(0:x_length, y, 'filled');
    title('y1[n]');
    xlabel('n (samples)');
    ylabel('Amplitude');
    
    g = 1;
    
end
