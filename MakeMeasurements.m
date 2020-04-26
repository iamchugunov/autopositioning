function [ R ] = MakeMeasurements( SatPosTrue, sigma_n )
    % Функция формирования измерений (для любого числа маяков - N)
    % 2 - 1
    % 3 - 1
    % ...
    % N - 1
    % 3 - 2
    % ...
    % N - (N-1)
    
    k = 1;
    for i = 1:(size(SatPosTrue,2)-1)
        for j = (i+1):size(SatPosTrue,2)
            R(k) = norm(SatPosTrue(:,i) - SatPosTrue(:,j)) + normrnd(0,sigma_n);
            k = k + 1;
        end
    end
    R = R';
        
end


