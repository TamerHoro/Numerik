function c=intpol_newton(x,y);

y=[0 0.5 1/sqrt(2) 0.5*sqrt(3) 1];
x=[0 pi/6 pi/4 pi/3 pi/2];
[xc,xr]= size(x);
c=y;
cmerk = c;
for k=2:1:xr
    for j=k:1:xr
    
        cmerk(j)= (c(j)-c(j-1))/(x(j)-x(j+1-k))
    end
    c = cmerk;
end

end