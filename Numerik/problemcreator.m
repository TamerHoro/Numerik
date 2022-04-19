function pc = problemcreator;
A = diagdom( 100,0,100 );
x =randi(100,100,1);
b = A*x;
save A.mat A
save b.mat b
save x.mat x