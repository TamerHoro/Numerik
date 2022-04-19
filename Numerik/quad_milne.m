function y = quad_milne(f,a,b,n)

h = (b-a)/n %Betrag des Teilintervalls
qf=0;
for i=a+h:h:b        %n schritte
                     %Milne Regel 5 knoten
    x1= i-h;          % 5 xk weil Milneregel n=4 => k = n+1 = 5
    x2= (i-h)+(h*(1/4));
    x3= (i-h)+(h*(2/4));
    x4=(i-h)+(h*(3/4));
    x5= i;
    qf =qf + (f(x1))*(7/90) + (f(x2))*(32/90) + (f(x3))*(12/90) + (f(x4))*(32/90) + (f(x5))*(7/90)
end
qf = h*(qf)