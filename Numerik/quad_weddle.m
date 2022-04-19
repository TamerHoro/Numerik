function y = quad_weddle(f,a,b,n)

h = (b-a)/n %Betrag des Teilintervalls
qf=0;
for i=a+h:h:b        %n schritte
                     %Milne Regel 5 knoten
    x1= i-h;          % 5 xk weil Milneregel n=4 => k = n+1 = 5
    x2= (i-h)+(h*(1/6));
    x3= (i-h)+(h*(2/6));
    x4=(i-h)+(h*(3/6));
    x5=(i-h)+(h*(4/6));
    x6=(i-h)+(h*(5/6));
    x7=i;
    qf =qf + (f(x1))*(41/840) + (f(x2))*(216/840) + (f(x3))*(272/840) + (f(x4))*(272/840) + (f(x5))*(27/840) + (f(x6))*(216/840) + (f(x7))*(41/840);
end
qf = h*(qf)