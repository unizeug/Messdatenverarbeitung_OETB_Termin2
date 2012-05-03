
s = poly(0, 's');
wg=3.1E3*2*%pi;

H=syslin('c',1,(1+(sqrt(2)/wg)*s+s^2/wg^2));

clf(1);scf(1);
bode(H,1,30000,'Butterworth 2. Ordnung');
xgrid();

H2=H^4;

clf(2);scf(2);
bode(H2,1,30000,'Butterworth 8. Ordnung');
xgrid();