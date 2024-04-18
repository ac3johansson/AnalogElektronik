%Rootlocus exempel ('control toolbox krävs')
clear all;
close all;
s=zpk('s'); %Definiera 's', se help zpk
%Antag några värden
P1=-3;
P2=-7;
P3=-15;
n=-20;
w0=20;
delta=7;
figure(1)
%Tre slingpoler
rlocus(1/((1-s/P1)*(1-s/P2)*(1-s/P3)))
figure(2)
%två slingpoler och ett slingnollställe
rlocus( (1-s/n) / ( (1-s/P1)*(1-s/P2) ) )
%lägg till en hjälpcirkel med radien w0
% hold on
% angle = linspace(0, 2*pi, 360);
% x = w0*cos(angle);
% y = w0*sin(angle);
% plot(x,y)
% axis('equal')
figure(3)
%Tre slingpoler och ett slingnollställe
rlocus( (1-s/n) / ( (1-s/P1)*(1-s/P2)*(1-s/(delta*n)) ) )
% %lägg till en hjälpcirkel med radien w0
% hold on
% angle = linspace(0, 2*pi, 360);
% x = w0*cos(angle);
% y = w0*sin(angle);
% plot(x,y)
% axis('equal')
