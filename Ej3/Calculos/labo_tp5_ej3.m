fp = 1.9e6;
fm = 100e3;
m = 1;
Ap = 0.1;
Am = Ap*m/2;
t = 0:1/50/fp:3/fm;

%Sm = sin(2*pi()*fm*t);
Sp = sin(2*pi()*fp*t);

Sm = Ap*(mod(t, 1/fm));

SAM = Sp .* (1 + m*Sm);
plot(t, SAM);

x = [fp - fm, fp, fp + fm];
y = 10*log10([Am^2/100/1e-3, Ap^2/100/1e-3, Am^2/100/1e-3]);
figure;
hold on;
grid on;

for i=1:3
    %m=1: 18
    %m=0.5: 24
    quiver(x(i), -26, 0, y(i)+26, 0, 'Color', 'b', 'LineWidth', 3);
end

formataxes('', 'Frecuencia (Hz)', 'Potencia (dBm)');