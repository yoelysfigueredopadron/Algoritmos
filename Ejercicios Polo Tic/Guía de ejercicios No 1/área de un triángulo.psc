Algoritmo AreaTriangulo
	
	Escribir '';
	Escribir 'Este programa permite calcular el �rea de un tri�ngulo en cm�.';
	Escribir '';
	
	Definir area, base, altura Como Real;
	area <- 0;
	base <- 0;
	altura <- 0;
	
	Escribir 'Introduzca la base[cm] del tri�ngulo:';
	Leer base;
	Escribir '';
	Escribir 'Introduzca la altura[cm] del tri�ngulo:';
	Leer altura;
	Escribir '';
	
	// Calculamos el �rea del tri�ngulo
	area <- (base*altura)/2;
	
	Escribir 'El �rea del tri�ngulo es igual a ', area, 'cm�';
	Escribir '';
	
FinAlgoritmo
