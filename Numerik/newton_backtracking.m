function [x,xVec,alpha] = newton_backtracking(f,f_,x0,tol1,tol2,tol3,maxit)

format long;
%tol2= sqrt(eps)               %eps = maschienengenauigkeit von matlab double werten
%tol1 =tol2;
%tol3 = tol1;                      %Aus testzwecken Tolranzen so gewhält
%xVec = zeros(1,maxit);
xplus = x0;
xprev = x0;
xprevprev=0;
alpha = 0;
for i=1:1:maxit 
        if i>3
        dkminus = dk;                            
        end
        xprevprev = xprev;
        xprev = xplus;
        xplus = xplus - (f(xplus)/f_(xplus));     %Newton-Verfahren
        xplus = (xprev+xplus)/2;                  %Backtracking
        xVec(i)=xplus;
        k1 = abs(f(xplus));                      %Berechnet Wert der 1. Abbruchbedingung
        k2 = abs(xplus-xprev)/abs(xplus);        %Berechnet Wert der 2. Abbruchbedingung
        k3 = abs(xplus-xprev);                   %Berechnet Wert der 3. Abbruchbedingung
        if i>=3
        dkplus= abs(xprev-xplus);
        dk = abs(xprevprev-xprev);
        end
        if i>3
        alpha = log(dk/dkplus)/log(dkminus/dk);    %Kovergenzordnung unbekannter exakter Lösung
        end        
    %if (k1<= tol1) || k2<= tol2 || k3<=tol3        %Abbruchbedingungen bei Unterschreiten der Toleranzen tol1,tol2,tol3
    %    break;
    %end
end

x = xplus;
xVec
alpha;