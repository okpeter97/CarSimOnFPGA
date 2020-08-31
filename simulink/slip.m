figure
plot(Fx.time, Fx.signals.values);
xlabel('time(sample)')
ylabel('Fx (Newton)')

figure
plot(angularVel.time, angularVel.signals.values);
xlabel('time(sample)')
ylabel('Angular velocity (rad/s)')

figure
plot(slipRatio.time, slipRatio.signals.values);
xlabel('time(sample)')
ylabel('Slip ratio (%)')