function xn=ecuacionlogistica(niter)
%
%
%Representaci�n de la ecuaci�n log�stica poblacional x(n+1)=C*x(n)*(1-x(n))
%Las diferentes �rbitas se producen al cambiar el par�metro C.
%Este programa itera la ecuaci�n log�stica para 600 valores diferentes de C
%commprendidos entre 1 y 4.
%Para cada valor de C se calcula una �rbita de 600 valores, de los cuales
%no se representan los 100 primeros, en los que la funci�n todav�a no se ha
%estabilizado.
%'niter' -> n�mero iteraciones para establizar la ecuaci�n. Tiene que ser
%mayor que 100.
%xn=logistica(niter)
%
c=1:0.005:4; %Evaluamos todas las ctes ecol�gicas 'c'.
x=linspace(0.1,1,length(c)); %Creamos vector para el porcentaje de poblaci�n �ptima 'x'.
h=niter-100; %Para representar a partir de la iteraci�n 100.
for i=1:100  %Para las primeras 100 iteraciones.
    yn=c.*x.*(1-x);
    x=yn;
end
for j=1:h    %Para el resto de iteraciones.
    xn=c.*x.*(1-x);
    x=xn;
    hold on
    plot(c,xn,'m.','markersize',1)
end
disp('el resultado xn es el valor de la poblaci�n para la �ltima iteraci�n.')
title('Diagrama de bifurcaci�n de la ecuaci�n log�stica')
xlabel('Constante ecol�gica  C')
ylabel('Porcentaje poblaci�n  X')