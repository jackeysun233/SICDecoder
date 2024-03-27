clear;clc;

J = 4; %一个时隙内部的用户数量
NumST = 500; %时隙长度
EbN0_dB = 1:1:10;
EbN0 = 10.^(EbN0_dB./10);
SNR = EbN0./2;

for i = 1:length(EbN0)
    
N0 = 1./EbN0(i);
noise = sqrt(N0)*randn(1,NumST);
H = sqrt(0.5)*randn(J,1);

%Trans
TxData = randi([0 1],J,NumST);
ModData = real(pskmod(TxData,2,pi));

%Receive
RxData = sum(H.*ModData);

%Decoder
[~,DecodeIdx] = sort(abs(H)); %对H的绝对值进行排序，按照从大到小的顺序来译码
for j = 1:J

end %Decode the user Info sequentially

end % end for EbN0