function fractalsierpinski(A,B,C,iter)
%
%Dibuja el tri�ngulo de Siespinski.
%fractalsierpinski(A,B,C,iter)
%A,B,C son los puntos del tri�ngulo; preferiblemente que sea equil�tero.
%ej: A=[0 0] B=[1 1] C=[2 0]
%Si iter>10 el programa tarda mucho en dibujar el fractal. Preferiblemente
%usar iter<8.
%
hold on
x=[A(1) B(1) C(1) A(1)];  %Vector coordenadas 'x'.
y=[A(2) B(2) C(2) A(2)];  %Vector coordenadas 'y'.
plot(x,y,'k')   %Dibuja primer tri�ngulo.
nA=[A(1)+(B(1)-A(1))./2 A(2)+(B(2)-A(2))./2]; %Calcula primer ptos tri�ngulo contenido.
nB=[A(1)+(C(1)-A(1))./2 A(2)+(C(2)-A(2))./2];
nC=[B(1)+(C(1)-B(1))./2 C(2)+(B(2)-C(2))./2];
x=[nA(1) nB(1) nC(1) nA(1)];  %Coordenadas tri�ngulo contenido.
y=[nA(2) nB(2) nC(2) nA(2)];
plot(x,y)
if iter>=3  %Para que dibuje tri�ngulos contenidos no solo en el central. (Repartidos).
    r=randi(4,1);  %N� aleatorio para cambiar el orden de dibujado.
    if r==1
        fractalsierpinski(A,nA,nB,iter-1) %Bucles para repetir proceso en tri�ngulos peque�os.
        fractalsierpinski(nA,B,nC,iter-1)
        fractalsierpinski(nA,nB,nC,iter-1)
        fractalsierpinski(nB,nC,C,iter-1)
    elseif r==2
        fractalsierpinski(nA,nB,nC,iter-1)
        fractalsierpinski(nA,B,nC,iter-1)
        fractalsierpinski(A,nA,nB,iter-1)
        fractalsierpinski(nB,nC,C,iter-1)
    elseif r==3
        fractalsierpinski(nA,nB,nC,iter-1)
        fractalsierpinski(nB,nC,C,iter-1)
        fractalsierpinski(A,nA,nB,iter-1)
        fractalsierpinski(nA,B,nC,iter-1)
    else
        fractalsierpinski(nB,nC,C,iter-1)
        fractalsierpinski(A,nA,nB,iter-1)
        fractalsierpinski(nA,B,nC,iter-1)
        fractalsierpinski(nA,nB,nC,iter-1)
    end
end
        