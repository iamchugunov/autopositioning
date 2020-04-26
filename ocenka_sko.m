sko = [0 0.1 0.2 0.3 0.4 0.5 0.6];
N = 5000;
mx = zeros(1,N*5);
razmer = 300;
for j = 1:length(sko)
for i = 1:N
SatPosTrue(:,1) = [0;0];
SatPosTrue(:,2) = [randi([0 razmer])/10;0];
SatPosTrue(:,3) = [randi([0 razmer])/10;randi([0 razmer])/10];
SatPosTrue(:,4) = [randi([0 razmer])/10;randi([0 razmer])/10];
SatPosTrue(:,5) = [randi([0 razmer])/10;randi([0 razmer])/10];

[ R ] = MakeMeasurements( SatPosTrue, sko(j) );

% ׀וראול ַֽ

% Sats   = AutoPositioning5( R );
% Sats_n = nn_go_5_1( w1, b1, w2, b2, R ); 
Sats_n = nn_go_5_2( w1, b1, w2, b2, w3, b3, R ); 
a = accuracy_calc(Sats_n,SatPosTrue);
mx(5*(i-1)+1:5*(i-1)+5) = a;
end
    m(j) = mean(mx);
    s(j) = std(mx);
end