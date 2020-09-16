Algoritmo NumeroParImpar
	
	Escribir '';
	Escribir 'Este programa determina si es un número par o impar ingresando un número entre 1 y 100.';
	Escribir '';
	
	Definir num Como Entero;
	
	Escribir 'Introduzca un número entre 1 y 100:';
	Leer num;
	
	Escribir '';
	
	// Operción para determinar si el número es par o impar.
	Si (num MOD 2 = 0) Entonces
		Escribir 'El número ',num,' es par.';
	SiNo
		Escribir 'El número ',num,' es impar.';
	FinSi
	Escribir '';
	
FinAlgoritmo
