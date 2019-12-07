function y = chebMF(fp, fs, Dr, Ds)
 
Omega_s = fs/fp;

epsilon = sqrt(10^(Dr/10)-1);

n = ceil(acosh(10^((Ds/20))/epsilon)/(acosh(Omega_s)));

Omega_3dB = cosh(acosh(sqrt(10^(0.3)-1)/epsilon)/n);

disp([ "Omega_s:" "Omega_3dB" "epsilon" "n"; Omega_s Omega_3dB epsilon n]);

y = [Omega_s Omega_3dB epsilon n];