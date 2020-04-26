function [ Sats ] = nn_go_5_1( w1, b1, w2, b2, R )
%     для 5 маяков
%     для сети с 1 скрытым слоем
%     максимальный размер 30 м
    
    out1 = relu(R'*w1 + b1');
    out2 = relu(out1*w2 + b2');
    
    Sats(:,1) = [out2(1);out2(2)];
    Sats(:,2) = [out2(3);out2(4)];
    Sats(:,3) = [out2(5);out2(6)];
    Sats(:,4) = [out2(7);out2(8)];
    Sats(:,5) = [out2(9);out2(10)];
    
end

