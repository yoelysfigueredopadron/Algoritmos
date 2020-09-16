Algoritmo CalcularPotencia
	
	Escribir '';
	Escribir 'Este programa calcula la potencia introduciendo base y exponente.';
	Escribir '';
	
	Definir base, exponente, resultado Como Entero;
	
	Escribir 'Introduzca la base para calcular potencia:';
	Leer base;
	Escribir 'Introduzca el exponente para calcular potencia:';
	Leer exponente;
	
	// Calculamos potencia
	resultado <- base^exponente;
	
	Escribir '';
	Escribir 'La potencia de ', base, '^', exponente, ' es igual a ', resultado;
	Escribir '';
	
FinAlgoritmo
