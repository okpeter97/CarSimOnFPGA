figure
plot(Fx.time, Fx.signals.values);
xlabel('time(sample)')
ylabel('Fx (Newton)')

figure
plot(Fy.time, Fy.signals.values);
xlabel('time(sample)')
ylabel('Fy (Newton)')

figure
plot(slipAngle.time, slipAngle.signals.values);
xlabel('time(sample)')
ylabel('Slip angle (degrees)')