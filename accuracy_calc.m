function [ a ] = accuracy_calc( Sats, Sats_true )
    N = size(Sats,2);
    for i = 1:N
        a(i) = norm(Sats(:,i) - Sats_true(:,i));
    end
    
    

end

