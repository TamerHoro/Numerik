function a38=aufgabe38funktion_skript;

S=[0.5 0.3 ; 0.3 0.5]
xnull = [8 0]
c=[1.6 0]
x = S*xnull'+c'
xstar =[5 3]
counter = 2;
for i=2:1:8
    counter = counter+1    
    rr= (log(max(abs(x-xstar'))) - log(max(abs(S*x+c'-xstar'))))/log(10)
    konvergenzrate= (max(abs(S*x+c'-xstar)))/(max(abs(x-xstar)))
    x = S*x+c'
    
    dk = x - xstar'
end
%Konvergenzrate
lambda= [0.2 0.8]
sigma = max(lambda)
r= -log10(sigma)