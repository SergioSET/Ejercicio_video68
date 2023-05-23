var int: bread;
var int: butter;
var int: cheese;
var int: cereal;
var int: diet_bar;
var int: precio;

constraint bread >= 0;
constraint butter >= 0;
constraint cheese >= 0;
constraint cereal >= 0;
constraint diet_bar >= 0;

constraint 0.08*bread + 0.25*cheese + 0.12*cereal + 0.08*diet_bar >= 550;
constraint 0.01*bread + 0.90*butter + 0.36*cheese + 0.03*cereal >= 600;
constraint 0.55*bread + 0.75*cereal + 0.5*diet_bar >= 2000;

constraint precio = 0.0025*bread + 0.005*butter + 0.012*cheese + 0.006*cereal + 0.015*diet_bar;

solve minimize precio;

output ["\nBread=", show(bread), "\nButter=", show(butter), "\nCheese=", show(cheese), "\nCereal=", show(cereal), "\nDiet bar=", show(diet_bar), "\nPrecio=", show(precio), ]

