Algoritmo PromedioNotasAlumno
	
	Escribir '';
	Escribir 'Este programa permite calcular el promedio de 4 notas de un alumno mostrando el resultado en pantalla.';
	
	Definir promedio,nota1,nota2,nota3,nota4 Como Real;
	nota1 <- 0;
	nota2 <- 0;
	nota3 <- 0;
	nota4 <- 0;
	promedio <- 0;
	
	Escribir 'Introduzca las notas del alumno:';
	Escribir '';
	Escribir 'Introduzca nota1';
	Leer nota1;
	Escribir '';
	Escribir 'Introduzca nota2';
	Leer nota2;
	Escribir '';
	Escribir 'Introduzca nota3';
	Leer nota3;
	Escribir '';
	Escribir 'Introduzca nota4';
	Leer nota4;
	Escribir '';
	
	// Calculamos el promedio
	promedio <- (nota1+nota2+nota3+nota4)/4;
	
	Escribir 'El alumno tiene un promedio de ',REDON(promedio*100)/100,' puntos.';
	Escribir '';
	
FinAlgoritmo
