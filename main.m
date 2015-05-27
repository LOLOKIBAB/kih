%% 
clc;
clear;
%% task 1
N=23;
f=0.3;
fs=1024;

window = rectwin(N);
fun = fir1(N-1,f,window);
W = 0:1/fs:(fs-1)/fs;
H = zeros(fs,1);
H(1:f*fs+1) = 1;
figure;
plot(W, H);
grid on;
hold on;
[h,w] = freqz(fun);
plot(w/pi,abs(h));
figure;
freqz(fun);
figure;
impz(fun);
%% task 2
N=23+1;
f=0.3;
fs=1024;

window = rectwin(N);
fun = fir1(N-1,f,window);
W = 0:1/fs:(fs-1)/fs;
H = zeros(fs,1);
H(1:f*fs+1) = 1;
figure;
plot(W, H);
grid on;
hold on;
[h,w] = freqz(fun);
plot(w/pi,abs(h));
figure;
freqz(fun);
figure;
impz(fun);
%% task 3
N=23;
f=0.3;
fs=1024;

window = triang(N);
fun = fir1(N-1,f,window);
W = 0:1/fs:(fs-1)/fs;
H = zeros(fs,1);
H(1:f*fs+1) = 1;
figure;
plot(W, H);
grid on;
hold on;
[h,w] = freqz(fun);
plot(w/pi,abs(h));
figure;
freqz(fun);
figure;
impz(fun);