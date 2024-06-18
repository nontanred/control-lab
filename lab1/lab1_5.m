x=0:1:4;
num=x(2);
den=[x(3:5), x(1)];
sys=tf(num,den);
for i=1:3
 figure(i);
 K=i*1.5;
 [y,t]=step(feedback(K*sys,1));
 sim('closed_loop.slx');
 plot(out.SysResponse(:,1),out.SysResponse(:,3),'--r');
 if i==1
     legend('SysResponse1(K=1.5)');
 end
 hold on
 plot(t,y,':b','LineWidth',1.5);
 grid on
 hold off
end