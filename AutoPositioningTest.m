RANDOM_VVOD = 1;

razmer = 30;
N_max = 10;

if RANDOM_VVOD
    N = randi([4 10]);
    N_max = 5;
    N = 5;
    razmer = razmer*10;
    SatPosTrue = zeros(2,N_max);
    SatPosTrue(1,2) = randi([0 razmer])/10;
    for i = 3:N
    SatPosTrue(:,i) = [randi([0 razmer])/10;randi([0 razmer])/10];
    end
else
    N = input('N = ');
    SatPosTrue = zeros(2,N_max);
    figure
    axis([0 razmer 0 razmer])
    grid on
    hold on
    for i = 1:N
       [x,y] = ginput(1);
       SatPosTrue(:,i) = round([x;y],1);
       plot(SatPosTrue(1,i),SatPosTrue(2,i),'kv')
    end
    close
end

% [ R ] = MakeMeasurementsNotFull( SatPosTrue, 0, N_max, N );
[ R ] = MakeMeasurements( SatPosTrue, 0.1 )
% 
% % ׀וראול ַֽ
% 
% Sats   = AutoPositioning5( R );
% Sats_n = nn_go_5_1( w1, b1, w2, b2, R ); 
Sats_n = nn_go_5_2( w1, b1, w2, b2, w3, b3, R ); 
% Sats_n = nn_go_inv_10max( w1, b1, w2, b2, w3, b3, R );
% 
% 
% % 
plot(SatPosTrue(1,:), SatPosTrue(2,:),'kv')
hold on
% plot(Sats(1,:), Sats(2,:),'bo')
plot(Sats_n(1,:),Sats_n(2,:),'r*')
grid on 
daspect([1 1 1])
axis([-1 31 -1 31])

