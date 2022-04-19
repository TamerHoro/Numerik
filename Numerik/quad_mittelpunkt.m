function y = quad_mittelpunkt(f,a,b,n)

h = (b-a)/n %Betrag des Teilintervalls
qf=0;
for i=a+h:h:b        %n+1 schritte    
    xk= (i-h)+(h/2);        %k=1 weil mittelpunktsregel
    qf =qf + f(xk);
end
qf = h*(qf)