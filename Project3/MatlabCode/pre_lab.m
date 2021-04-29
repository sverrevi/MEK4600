filename = "180404_0359_CCLD_uten_flow.wav";
[y, Fs] = audioread(filename);
N = length(y);
t = (0:N-1)/Fs;
subplot(3, 1, 1);
plot(t, y)
title(filename, 'interpreter', 'none')
xlabel('Time [s]')
ylabel('Signal')


subplot(3, 1, 2);
[p, f] = pspectrum(y, Fs, "power");
loglog(f, p)
ylabel("PSD")
xlabel("Frequency [Hz]")
subplot(3, 1, 3);
pspectrum(y, Fs, 'spectrogram')
