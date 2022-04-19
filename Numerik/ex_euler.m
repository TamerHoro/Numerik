function [t,y] = ex_euler(f,t0,y0,tmax,N)
n = (tmax-t0)/N   %N = Anzahl der Schritte, n = Schrittweite
i=0;
for k=t0+n:n:tmax
    i=i+1;
    t(i)=k;
    ystrich(i,:) = fsolve(f,y0)
end
y=ystrich
