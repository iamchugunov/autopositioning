function [ Sats ] = nn_go_5_2( w1, b1, w2, b2, w3, b3, R )
%     для 5 маяков
%     для сети с 2 скрытым слоем
%     максимальный размер 30 м
    
    out1 = relu(R'*w1 + b1');
    out2 = relu(out1*w2 + b2');
    out3 = relu(out2*w3 + b3');
    
    Sats(:,1) = [out3(1);out3(2)];
    Sats(:,2) = [out3(3);out3(4)];
    Sats(:,3) = [out3(5);out3(6)];
    Sats(:,4) = [out3(7);out3(8)];
    Sats(:,5) = [out3(9);out3(10)];
    
end

