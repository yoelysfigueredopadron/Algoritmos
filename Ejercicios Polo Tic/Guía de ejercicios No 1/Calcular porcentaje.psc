Algoritmo CalcularPorcentaje
	
	Escribir '';
	Escribir 'Este programa permite calcular cualquier porcentaje de un n�mero.';
	Escribir '';
	
	Definir num, porciento, resultado Como Real;
	
	Escribir 'Introduzca n�mero del cual desea calcular el porcentaje:';
	Leer num;
	Escribir '';
	Escribir 'Introduzca porcentaje que desea calcular sobre el n�mero ingresado anteriormente. El mismo debe ser introducido con 0. seguido del n�mero que representa el porcentaje a calcular acontinuaci�n mostramos unos formatos de ejemplos:';
	Escribir '0.01 representa el 1%, 0.10 el 10%, 0.99 el 99%, etc.';
	Leer porciento;
	Escribir '';
	
	// Calculamos el porcentaje
	resultado <- num*porciento;
	
	Escribir 'El ',porciento*100,'% de ',num,' es ',resultado;
	Escribir '';
FinAlgoritmo
