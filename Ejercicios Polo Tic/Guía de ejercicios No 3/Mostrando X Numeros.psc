Algoritmo MotrandoXNumeros
	Definir numeroX Como Real;
	Definir numeroIncial Como Entero;
	numeroX = 0;
	numeroIncial = 1;
	Repetir
		Escribir "";
		Escribir "    Con este programa mostraremos en pantalla un listado de números comenzando en 1 hasta el número X que usted introduzca por teclado.";
		Escribir "";
		Escribir "Introduzca un número:";
		Leer numeroX;
		numeroX = TRUNC(numeroX);
		Si (numeroX < numeroIncial) Entonces
			Escribir "";
			Escribir "    Debe introducir un número mayor que cero (0) para mostrar un listado de números en pantalla.";
			Escribir "";
			Esperar 2 Segundos;
			Escribir  "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
		SiNo
			Escribir "";
			Mientras (numeroIncial <= numeroX) Hacer
				Escribir "    Número: " numeroIncial;
				numeroIncial = numeroIncial + 1;
			Fin Mientras
		Fin Si
	Hasta Que (numeroX >= 1)
	Escribir "";
	Escribir "    Gracias por usar nuestro programa. :)";
	Escribir "";
FinAlgoritmo