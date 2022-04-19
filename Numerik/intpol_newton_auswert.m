function y=intpol_newton_auswert(x,c,xx);


xx = pi/12;
y=[0 0.5 1/sqrt(2) 0.5*sqrt(3) 1];    %Beispiel Aufgabe 64 
xi=[0 pi/6 pi/4 pi/3 pi/2];

%{
xx=2;
xi=[-1 0 1 3];    %Aufgabe 65
y=[0 3 2 60];
%}
c =intpol_newton(xi,y);
counter =1;
p= 0;
[numCols,numRows] = size(c);
produkt = 1;
for k=2:1:numRows
    produkt = produkt * (xx-xi(k-1));
    p= p +c(k)*produkt;
end

y = p;