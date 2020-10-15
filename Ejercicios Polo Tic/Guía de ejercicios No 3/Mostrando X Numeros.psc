Algoritmo MotrandoXNumeros
	Definir numeroX Como Real;
	Definir numeroIncial Como Entero;
	numeroX = 0;
	numeroIncial = 1;
	Repetir
		Escribir "";
		Escribir "    Con este programa mostraremos en pantalla un listado de n�meros comenzando en 1 hasta el n�mero X que usted introduzca por teclado.";
		Escribir "";
		Escribir "Introduzca un n�mero:";
		Leer numeroX;
		numeroX = TRUNC(numeroX);
		Si (numeroX < numeroIncial) Entonces
			Escribir "";
			Escribir "    Debe introducir un n�mero mayor que cero (0) para mostrar un listado de n�meros en pantalla.";
			Escribir "";
			Esperar 2 Segundos;
			Escribir  "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
		SiNo
			Escribir "";
			Mientras (numeroIncial <= numeroX) Hacer
				Escribir "    N�mero: " numeroIncial;
				numeroIncial = numeroIncial + 1;
			Fin Mientras
		Fin Si
	Hasta Que (numeroX >= 1)
	Escribir "";
	Escribir "    Gracias por usar nuestro programa. :)";
	Escribir "";
FinAlgoritmo