function y = quad_simpson(f,a,b,n)

h = (b-a)/n %Betrag des Teilintervalls
qf=0;
for i=a+h:h:b        %n schritte
    i
    x1= i-h        % 3 xk weil Simpsonregel n=2 => k = n+1 = 3
    x2= (i-h+i)/2
    x3= i
    qf =qf + (f(x1))/6 +2*(f(x2))/3 +(f(x3))/6 ;
end
qf = h*(qf)