var float: X; 
var float: Y; 
var float: C;
constraint 15*X + 20*Y >= 60;
constraint 10*X + 5*Y >= 30;
constraint X>=0;
constraint Y>=0;
constraint C=80*X+50*Y;
solve minimize C;

output ["X=", show(X), "\nY=", show(Y), "\nC=", show(C)];
%Ejecutar con OSICBC
