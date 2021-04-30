[y1, Fs1] = audioread("210514_0746.wav");
[y2, Fs2] = audioread("210514_0748.wav");
[y3, Fs3] = audioread("210514_0744.wav");
N = length(y1);
t = (0:N-1)/Fs1;
plot(t, y1)
[p1, f1] = pspectrum(y1, Fs1, "power");
[p2, f2] = pspectrum(y2, Fs2, "power");
[p3, f3] = pspectrum(y3, Fs3, "power");
std_Power_1 = std(p1);
std_Power_2 = std(p2);
std_power_3 = std(p3);

m1 = mean(y1);
m2 = mean(y2);
m3 = mean(y3);
S1 = std(y1);
S2 = std(y2);
s3 = std(y3);
s1_denoised = std(ffilt_46);
s2_denoised = std(ffilt_44);
s3_denoised = std(ffilt_48);