var int: x1;
var int: x2;
var int: C;

constraint 4*x1 + 10*x2 <= 45;
constraint 4*x1 + 4*x2 <= 23;
constraint x1 >= 0;
constraint x2 >= 0;
constraint C = 2*x1 + 3*x2;

solve maximize C;

output ["Sillas=", show(x1), "\nMesas=", show(x2), "\nBeneficio=", show(C)];