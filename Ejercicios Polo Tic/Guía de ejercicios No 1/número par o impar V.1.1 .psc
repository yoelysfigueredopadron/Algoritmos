Algoritmo NumeroParImpar		
	Definir num Como Entero;	
	// En caso que el usurio introduzca un número erróneo fuera del rango entre 1 y 100 el programa le volverá a pedir que introduzca el número.
	Repetir
		// Escribir ''; Con está línea imprimimos en pantalla una línea en blanco para separar la información y tener una mejor visualización.
		Escribir '';
		Escribir 'Este programa determina si es un número par o impar ingresando un número entre 1 y 100.';
		Escribir '';
		Escribir 'Introduzca un número entre 1 y 100:';
		Leer num;
		Escribir '';
		Si (num < 1 O num > 100) Entonces
			Escribir "Error. El número ", num, " no se encuentra en el rango entre 1 y 100. Por favor vuelva a introducir el número.";
			// Le mostramos el mensaje al usuario por 5 segundos para pedirle que ingrese el número nuevamente.
			Esperar 5 Segundos;
			Borrar Pantalla;
		SiNo
			// Operción para determinar si el número es par o impar.
			Si (num MOD 2=0) Entonces
				Escribir 'El número ', num, ' es par.';
			SiNo
				Escribir 'El número ', num, ' es impar.';
			FinSi
		Fin Si		
	Hasta Que (num>=1 Y num<=100)	
	Escribir '';		
FinAlgoritmo
