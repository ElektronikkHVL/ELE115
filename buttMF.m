function y = buttMF(fp, fs, Dr, Ds)

Omega_s = fs/fp;

epsilon = 10^(Dr/10)-1;

n = ceil((Ds-10*log10(epsilon))/(20*log10(Omega_s)));

Omega_3dB = ((10^(0.3)-1)/epsilon)^(1/(2*n));

disp([ "Omega_s:" "Omega_3dB" "epsilon" "n"; Omega_s Omega_3dB epsilon n])

y = [Omega_s Omega_3dB epsilon n];
