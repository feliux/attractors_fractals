function atractormuneco(x1,y1,iter)
%
%Ejemplo de atractor ca�tico con forma de mu�eco.
%Partiendo de x1=-0.01 y=-0.01 se forma un mu�eco con cabeza, brazos y
%piernas.
%atractormuneco(x1,y1,iter)
%Recomendable un gran n�mero de iteracioines == +10000.
%Puede demostrarse rigurosamente que para cada punto de una �rbita existe
%otro dentro de esa misma �rbita tancerca del anterior  como
%arbitrariamente deseemos.
%
for i=1:iter
    xn=1-y1+abs(x1); %Ecuaci�n iterativa.
    yn=x1;           %Ecuaci�n iterativa.
    x1=xn;
    y1=yn;
    hold on
    plot(xn,yn,'k','markersize',2) %Markersize 2 para cambiar tama�o de los ptos.
    pause(0.00001)
end