%%
%   Plots the zeros and poles of the transfer function given by the
%   coeff of it's denominator and nominator.
%

function poles_zeros_plot(zer, pol)

    figure;
    zplane(zer, pol);
    title('zeros and poles');
    
end