clear all;
clearvars;
clc;

f = 0.2* 1e6;   %Frecuencia de la senial triangular
A = 125e-3; %amplitud pico de la senial triangular

N  = 20; %cantidad de armonicos que se muestran

x = 1 : N;
x  = x*f;
y = zeros([1 N]);
% \frac{8\cdot A\cdot (-1)^\frac{n-1}{2}}{(n\cdot\pi)^2}

for n = 1:N  
     if(rem(n,3))   %si es impar
         y(n) = (4 *A*(-1)^((n-1)/2)/ n^2 / pi()^2)^(2);
     end;
end;



xlim([0 (N+1)*f]);
set(gca,'color','none') 

scatter(x,y,'*');
title('Diagrama espectral de señal de entrada')
grid on;

xticklabels = {'f_0', '3f_0', '5f_0', '7f_0', '9f_0', '11f_0', '13f_0', '15f_0', '17f_0', '19f_0'};
set(gca,'xtick',f:2*f:N*f); 
set(gca,'xticklabel',xticklabels,'interpreter','latex');
set(gca, 'xlabel', 'Frecuencia (Hz)','interpreter','latex');
ylabel('Amplitud(V)','interpreter','latex');


set(gca,'TickLabelInterpreter','latex');
xticks(f:2*f:19*f);
xlabel('Frecuencia','interpreter','latex');
ylabel('Amplitud(V)','interpreter','latex');
title('Diagrama espectral de se\~nal de entrada', 'interpreter', 'latex');