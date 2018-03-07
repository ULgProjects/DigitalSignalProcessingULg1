%%
%	Takes as argument the coeff of the polynomium of the transfer function 
%	and returns an annonymous expression of the impulse response.
%   Works for causal systems.
%

function h = impulse_response(zer, pol)

    delta = @(n) n == 0;
    step = @(n) n >= 0;
    
	[num, denom, rest] = residuez(zer, pol);
    h = @(n) sum(num.*( denom.^n ) * step(n)) + sum(rest)*delta(n);
    
    
end