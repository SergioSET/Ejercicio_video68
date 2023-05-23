var int: mesa;
var int: notebook;
var int: beneficio;

constraint mesa + notebook <= 10000;
constraint 2*mesa + notebook <= 15000;
constraint 3*mesa + 4*notebook <= 25000;
constraint mesa >= 0;
constraint notebook >= 0;
constraint beneficio = 1000*mesa + 750*notebook;

solve maximize beneficio;

output ["Mesa=", show(mesa), "\nNotebook=", show(notebook), "\nBeneficio=", show(beneficio)];
