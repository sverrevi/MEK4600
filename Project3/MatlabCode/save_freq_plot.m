%to run this one has to first run flow_rate_to_reynolds in order to save
%the filenames
n = size(filenames);
count = 1;
hfig = figure('visible', 'on');
folder = "C:\Users\sverr\OneDrive\Dokumenter\MEK4600\Project3\Freq_spec_plots\";
for i = 1:n
    [y, Fs] = audioread(filenames(i));
    [p, f] = pspectrum(y, Fs, "power");
    loglog(f, p);
    ylabel("PSD");
    xlabel("Frequency [Hz]");
    title("Spectrum for run" + string(count) + ", Re=" + string(Re_list(count)));
    savefig(folder + "run_" + string(i))
    count = count + 1;
end

