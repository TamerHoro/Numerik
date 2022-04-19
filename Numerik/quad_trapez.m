function y = quad_trapez(f,a,b,n)

h = (b-a)/n %Betrag des Teilintervalls
qf=0;
for i=a+h:h:b        %n+1 schritte
    x1= i-h;        % 2 xk weil Trapezregel n=1 => k = n+1 = 2
    x2= i;
    qf =qf + (f(x1))/2 +(f(x2))/2;
end
qf = h*(qf)