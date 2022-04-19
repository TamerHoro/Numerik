function D = diagdom( n,min,max )
D=randi([min,max],n,n);
EPS=2;
for i=1:1:n
    sum=0;
    for j=1:1:n
        if j==i
            continue;
        end
        sum =sum+ abs(D(i,j));
    end
    sig = randi([0,1],1);
    D(i,i)=((-1)^sig)*(sum+EPS);
end

end
