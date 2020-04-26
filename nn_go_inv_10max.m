function [ Sats ] = nn_go_inv_10max( w1, b1, w2, b2, w3, b3, R )
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
    Sats(:,6) = [out3(11);out3(12)];
    Sats(:,7) = [out3(13);out3(14)];
    Sats(:,8) = [out3(15);out3(16)];
    Sats(:,9) = [out3(17);out3(18)];
    Sats(:,10) = [out3(19);out3(20)];
    
end

