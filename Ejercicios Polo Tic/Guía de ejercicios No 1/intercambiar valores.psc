Algoritmo IntercambiarValores
	
	Escribir '';
	Escribir 'Este programa intercambia el valor de dos variables.';
	Escribir '';
	Escribir '';
	Escribir 'Ejemplo de utilización, si varible1=5 y varible2=12 entoces al mostrar los resultados en pantalla variable1=12 y variable2=5.';
	Escribir '';
	
	Definir variable1,variable2,varIntercambio Como Real;
	
	Escribir 'Introduzca el valor de variable1:';
	Leer variable1;
	Escribir '';
	Escribir 'Introduzca el valor de variable2:';
	Leer variable2;
	
	// Intercabiamos los valores de las variables
	varIntercambio <- variable1;
	variable1 <- variable2;
	variable2 <- varIntercambio;
	
	Escribir '';
	Escribir 'Después del intercambio variable1=',variable1,' y varible2=',variable2;
	Escribir '';
	
FinAlgoritmo
