%Analog elektronik - Exempel
%matlab: Fasmarginal, slutna förstärkningen och stegsvaret
%('control toolbox kr vs')
clear all;
close all;
%DC slingförstärkning och slingpoler:
AtINF=20; %Asymptotiska förstärkningen
ABnoll=-100; % DC slingförstärkningen, AB(0)
p1=-1*1e3; %slingpol, -1krad/s
p2=-5*1e3; %slingpol, -5krad/s
%%Definiera s
s=zpk('s')
ABs=ABnoll/((1-s/p1)*(1-s/p2)) %Slingförstärkningen, AB(s)
At=AtINF*(-1)*ABs/(1-ABs); %Slutna förstärkningen, At(s).
%Fasmarginal kollas "open loop", dvs frekvensen w0, d r |AB(w0)|=1=0dB,
%Unders k (plotta) fasmarginal (PM) genom att plotta slingförstärkningen
figure(1);bode((-1).*ABs,'b'); title('Slingf rst rkning');%
legend('AB(s)','Location','Best')
figure(2);bode(At,'b'); title('Den slutna f rst rkningen, At');%
legend('A_t','Location','Best')
figure(3); step(At); title('Systemets stegsvar');