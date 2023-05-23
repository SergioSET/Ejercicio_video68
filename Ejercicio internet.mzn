%Construir un modelo code.mzn con una variable de decision, x, en el rango 0..10 con la restricción de que x debe ser divisible por 4, la salida, obj, debe ser aquella que minimice el valor (x-7)^2

var 0..10: x;
var int: obj;

constraint x mod 4 == 0;
constraint obj = (x-7)^2;

solve minimize obj;

output ["x=", show(x), "\nObj=", show(obj)];