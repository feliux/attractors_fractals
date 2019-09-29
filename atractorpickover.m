function atractorpickover(x1,y1,h,iter)
%
%Dibuja el atractor de Pickover.
%Variar parámetros x1 y1 h para ver distintas formas.
%atractorpickover(x1,y1,h,iter)
%Recomendable un gran número de iteracioines == 1000 ó 10000.
%ej:h=-0.02
%
for i=1:iter
    xn=x1-h.*sin(y1+tan(3.*y1));  %Ecuaciones
    yn=y1-h.*sin(x1+tan(3.*x1));
    x1=xn;
    y1=yn;
    plot(xn,yn,'k','markersize',2) %Markersize 2 para el tamaño de los ptos.
    pause(0.0001)
    hold on
end