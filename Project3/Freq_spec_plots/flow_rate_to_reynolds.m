mass_flow_rate = 10^-3/60*[34, 34, 0, 0, 225, 225, 225, 1250, 1250, 1260, 1750, 1770, 1750,  2010, 2070, 2040, 2340, 2270, 2310]
filenames = string(zeros(size(mass_flow_rate, 2), 1)) 
for i=30:48
    filenames(i-29) = '210514_07' + string(i) + '.wav'
end
Re_list = zeros(size(mass_flow_rate))

D = 8*10^-3;
mu = 1e-3;

count = 1

for i = mass_flow_rate
    %Formula for relation between flow rate and diameter
    Re_list(count) = (4*i)/(pi*D*mu);
    count = count + 1;
end
