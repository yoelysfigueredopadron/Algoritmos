Algoritmo AreaTriangulo
	
	Escribir '';
	Escribir 'Este programa permite calcular el área de un triángulo en cm².';
	Escribir '';
	
	Definir area, base, altura Como Real;
	area <- 0;
	base <- 0;
	altura <- 0;
	
	Escribir 'Introduzca la base[cm] del triángulo:';
	Leer base;
	Escribir '';
	Escribir 'Introduzca la altura[cm] del triángulo:';
	Leer altura;
	Escribir '';
	
	// Calculamos el área del triángulo
	area <- (base*altura)/2;
	
	Escribir 'El área del triángulo es igual a ', area, 'cm²';
	Escribir '';
	
FinAlgoritmo
