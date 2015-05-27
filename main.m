%% 
clc;
clear;
% %% task 1
% L=23;
% f=0.3;
% fs=1024;
% 
% window = rectwin(L);
% fun = fir1(L-1,f,window);
% W = 0:1/fs:(fs-1)/fs;
% H = zeros(fs,1);
% H(1:f*fs+1) = 1;
% figure('Name', 'rect L');
% plot(W, H);
% grid on;
% hold on;
% [h,w] = freqz(fun);
% plot(w/pi,abs(h));
% figure('Name', 'rect L');
% freqz(fun);
% figure('Name', 'rect L');
% impz(fun);
% %% task 2
% L=23+1;
% f=0.3;
% fs=1024;
% 
% window = rectwin(L);
% fun = fir1(L-1,f,window);
% W = 0:1/fs:(fs-1)/fs;
% H = zeros(fs,1);
% H(1:f*fs+1) = 1;
% figure('Name', 'rect L+1');
% plot(W, H);
% grid on;
% hold on;
% [h,w] = freqz(fun);
% plot(w/pi,abs(h));
% figure('Name', 'rect L+1');
% freqz(fun);
% figure('Name', 'rect L+1');
% impz(fun);
% %% task 3
% L=23;
% f=0.3;
% fs=1024;
% 
% windowTriang = triang(L);
% funTriang = fir1(L-1,f,windowTriang);
% W = 0:1/fs:(fs-1)/fs;
% H = zeros(fs,1);
% H(1:f*fs+1) = 1;
% figure('Name', 'triang');
% plot(W, H);
% grid on;
% hold on;
% [h,w] = freqz(funTriang);
% plot(w/pi,abs(h));
% figure('Name', 'triang');
% freqz(funTriang);
% figure('Name', 'triang');
% impz(funTriang);
% 
% windowHamming = hamming(L);
% figure('Name', 'hamming');
% plot(W, H);
% grid on;
% hold on;
% funHamming = fir1(L-1,f,windowHamming);
% [h,w] = freqz(funHamming);
% plot(w/pi,abs(h));
% figure('Name', 'hamming');
% freqz(funHamming);
% figure('Name', 'hamming');
% impz(funHamming);
% 
% windowBlackman = blackman(L);
% figure('Name', 'blackman');
% plot(W, H);
% grid on;
% hold on;
% funBlackman = fir1(L-1,f,windowBlackman);
% [h,w] = freqz(funBlackman);
% plot(w/pi,abs(h));
% figure('Name', 'blackman');
% freqz(funBlackman);
% figure('Name', 'blackman');
% impz(funBlackman);
% %% task 4
% L=23;
% f=0.3;
% fs=1024;
% beta = 1;
% 
% windowKaiser = kaiser(L, beta);
% funKaiser = fir1(L-1,f,windowKaiser);
% W = 0:1/fs:(fs-1)/fs;
% H = zeros(fs,1);
% H(1:f*fs+1) = 1;
% figure('Name', 'kaiser');
% plot(W, H);
% grid on;
% hold on;
% [h,w] = freqz(funKaiser);
% plot(w/pi,abs(h));
% figure('Name', 'kaiser');
% freqz(funKaiser);
% figure('Name', 'kaiser');
% impz(funKaiser);
%% task 5
L = 61;
fs=1024;
stripe1 = [0 0.2];
stripe2 = [0.3 0.4];

windowHamming = hamming(L);
funHamming = fir1(L-1,stripe1,windowHamming);
W = 0:1/fs:(fs-1)/fs;
H = zeros(fs,1);
H(1:0.2*fs+1) = 1;
H(0.3*fs+1:0.4*fs+1) = 1;
figure('Name', 'hamming 0-0.2 and 0.3-0.4');
plot(W, H);
grid on;
hold on;
[h,w] = freqz(funHamming);
plot(w/pi,abs(h));
figure('Name', 'hamming');
freqz(funHamming);
figure('Name', 'hamming');
impz(funHamming);