Algoritmo NumeroParImpar		
	Definir num Como Entero;	
	// En caso que el usurio introduzca un n�mero err�neo fuera del rango entre 1 y 100 el programa le volver� a pedir que introduzca el n�mero.
	Repetir
		// Escribir ''; Con est� l�nea imprimimos en pantalla una l�nea en blanco para separar la informaci�n y tener una mejor visualizaci�n.
		Escribir '';
		Escribir 'Este programa determina si es un n�mero par o impar ingresando un n�mero entre 1 y 100.';
		Escribir '';
		Escribir 'Introduzca un n�mero entre 1 y 100:';
		Leer num;
		Escribir '';
		Si (num < 1 O num > 100) Entonces
			Escribir "Error. El n�mero ", num, " no se encuentra en el rango entre 1 y 100. Por favor vuelva a introducir el n�mero.";
			// Le mostramos el mensaje al usuario por 5 segundos para pedirle que ingrese el n�mero nuevamente.
			Esperar 5 Segundos;
			Borrar Pantalla;
		SiNo
			// Operci�n para determinar si el n�mero es par o impar.
			Si (num MOD 2=0) Entonces
				Escribir 'El n�mero ', num, ' es par.';
			SiNo
				Escribir 'El n�mero ', num, ' es impar.';
			FinSi
		Fin Si		
	Hasta Que (num>=1 Y num<=100)	
	Escribir '';		
FinAlgoritmo
