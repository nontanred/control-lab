p = tf([1],[1,3,0,0]);
%% p = 1./(s.^3 + 3*s.^2);
%%step(p);
sys1=ss(p);
A=[-3 0 0; 1 0 0; 0 1 0];
B=[1;0;0];
C=[0 0 1];
D=[0];
e = eig(A);
[num, den] = ss2tf(A,B,C,D);
G = tf (num, den);

c = tf([1.15,1],[0.15,1]);
sys_cl = p*c/(1+p*c);
step(sys_cl);
bode(c*p);
grid;
%%rlocus(c*p);

kcr = 15.6;
K1=kcr./2;
K2=kcr+1;
figure();
step(K1*c*p);
hold on
step(K2*c*p);
legend('K=kcr/2','K=kcr+1');
hold off

nyquist(c*p);
nyqlog(c*p);

K = 1;

