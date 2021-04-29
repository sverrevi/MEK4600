%Script where filename has to be manually changed, only denoising one sound file for
%each type of flow (laminar, transitional and turbulent)
current_filename = "210514_0746.wav";
[y, Fs] = audioread(current_filename);
N = length(y);
t = (0:N-1)/Fs;
n = length(t);

%Fourier transform
fhat = fft(y, n);
PSD = fhat.*conj(fhat)/n;

indices = PSD > 10^-4;
PSD_denoised = PSD.*indices;
fhat = indices.*fhat;
ffilt = ifft(fhat);
subplot(2, 1, 1);
plot(t, y);
title('Original sound sample');
xlabel('Time (s)');
ylabel('Signal');
subplot(2, 1, 2);
plot(t, ffilt);
title('Denoised sound sample');
xlabel('Time (s)');
ylabel('Signal');
%axis([-inf inf -1 1])

