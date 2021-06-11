function [a1,a0,Sx,Sy,Sxy,Sxx]=LinearRegression(x,y)
nx=length(x);
ny=length(y);
if nx~=ny
    disp('HATA : x ve y vektörlerinin eleman sayýsý ayný olmalýdýr.')
    a1=('HATA');
    a0=('HATA');
else
    Sx=sum(x);
    Sy=sum(y);
    Sxy=sum(x.*y);
    Sxx=sum(x.^2);
    a1=(nx*Sxy-Sx*Sy)/(nx*Sxx-Sx^2);
    a0=(Sxx*Sy-Sxy*Sx)/(nx*Sxx-Sx^2);
end
    %T=0:10:100;
    %p=[0.94 0.96 1 1.05 1.07 1.09 1.14 1.17 1.21 1.24 1.28]
    %Tplot=[-300 100]  
    %pplot=a1*Tplot+a0
    %plot(T,p,'*r','markersize',12)
    %hold on
    %plot(Tplot,pplot,'k')
    %xlabel('Sýcaklýk (C)','fontsize',20)
    %ylabel('Basýnç (atm)','fontsize',20)
    %T0=-a0/a1;