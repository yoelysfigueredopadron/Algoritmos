Algoritmo Mostrando35Numeros
	Definir numMientras, numRepetir, numPara Como Entero;
	numMientras = 1;
	numRepetir = 1;
	Escribir "";
	Escribir "    Impriendo en pantalla los n�meros del 1 al 35 utilizando las estructuras reperitivas (Mientras, Repetir y Para)";
	Escribir "";
	Escribir "    Estructura Mientras";
	Mientras (numMientras <= 35) Hacer
		Escribir "    N�mero " numMientras;
		numMientras = numMientras + 1;
	Fin Mientras
	Escribir "";
	Escribir "-------------------------------------------------------------------------------------------------------------------------------------------";
	Escribir "Estructura Repetir";
	Repetir
		Escribir "    N�mero " numRepetir;
		numRepetir = numRepetir + 1;
	Hasta Que (numRepetir = 36)
	Escribir "";
	Escribir "-------------------------------------------------------------------------------------------------------------------------------------------";
	Escribir "    Estructura Para";
	Para numPara<-1 Hasta 35 Con Paso 1 Hacer
		Escribir "    N�mero " numPara;
	Fin Para
	Escribir "";
	Escribir "    Muchas gracias por usar nuestro programa :)";
	Escribir "";
FinAlgoritmo
