Algoritmo NumeroParImpar
	
	Escribir '';
	Escribir 'Este programa determina si es un n�mero par o impar ingresando un n�mero entre 1 y 100.';
	Escribir '';
	
	Definir num Como Entero;
	
	Escribir 'Introduzca un n�mero entre 1 y 100:';
	Leer num;
	
	Escribir '';
	
	// Operci�n para determinar si el n�mero es par o impar.
	Si (num MOD 2 = 0) Entonces
		Escribir 'El n�mero ',num,' es par.';
	SiNo
		Escribir 'El n�mero ',num,' es impar.';
	FinSi
	Escribir '';
	
FinAlgoritmo
