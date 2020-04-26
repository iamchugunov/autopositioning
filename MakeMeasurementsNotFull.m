function [ R ] = MakeMeasurementsNotFull( SatPosTrue, sigma_n, N_max, N )
    
    % ‘ункци€ формировани€ измерений (дл€ любого числа ма€ков - N)
    % 2 - 1
    % 3 - 1
    % ...
    % N - 1
    % 3 - 2
    % ...
    % N - (N-1)
    % N_max - максимальное число слотов под ма€ки
    
    k = 1;
    for i = 1:(N_max-1)
        for j = (i+1):N_max
            if ((i >= N) || (j > N))
                R(k) = 0;
            else
                R(k) = norm(SatPosTrue(:,i) - SatPosTrue(:,j)) + normrnd(0,sigma_n);
            end
            k = k + 1;
        end
    end
    R = R';
        
end

