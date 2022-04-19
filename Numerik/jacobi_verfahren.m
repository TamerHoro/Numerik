function aufgabe38=jacobi_verfahren(A,b,x,tol);
tol =0.001;
A = cell2mat(struct2cell(load("A.mat")));
b = cell2mat(struct2cell(load("b.mat")));
[numRows,numCols] = size(A);
x= 1:numCols;

R = zeros(size(A));
L = zeros(size(A));
D = zeros(size(A));
%1. Apriori-Fehler
fehler = 100;
% Berechnung von S
for i=1:1:numRows
    for j=1:1:numCols        
        if j>i
            R(i,j) = A(j,i);
        elseif j==i
            D(i,j)= A(i,j);
        else 
            L(i,j)=A(i,j);    
        end
    end
end

while (abs(fehler)>tol)
    %Jacobi-Verfahren
    xVorher = x 
    
    %Jacobi schritt
    for i=1:1:numCols   
        sum=0;
        for j=1:1:numCols
            if(i~=j)
                sum = sum +A(i,j)*x(j);
            end
        end 
        x(i) = 1/A(i,i)*(b(i)-sum);
    end
    
    %Apriori-Fehler
    S = -inv(D)*(L+R);
    normS = norm(S,"inf");
    xFehler = x-xVorher;
    fehler = (normS/(1-normS))*norm(xFehler,"inf")
end


