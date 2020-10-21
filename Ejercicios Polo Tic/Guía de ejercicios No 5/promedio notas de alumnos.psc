Algoritmo PromedioNotasAlumnos
		
	Definir notas, i, j, iMostrarAlumnos, cantNotas Como Entero;
	Definir promAlumno Como Real;
	Definir alumnos, mostrarAlumnos Como Caracter;
	
	Dimension notas[40, 5];
	Dimension alumnos[40];
	Dimension mostrarAlumnos[40];
	Dimension promAlumno[40];
	
	i = 0;
	j = 0;
	iMostrarAlumnos = 0;
	cantNotas = 5;
	
	Escribir "";
	Escribir "    Este programa calcula el promedio de 5 notas de 40 alumnos de un curso.";
	Escribir "";
	
	Para i = 0 Hasta 39 Hacer
		promAlumno[i] = 0;
		Escribir "";
		Escribir "    Ingrese el nombre del alumno:";
		Leer alumnos[i];
		mostrarAlumnos[i] = "    Alumno" + ConvertirATexto(i + 1) +" : " + alumnos[i];
		Escribir "";
		Escribir "    Ingrese las 5 notas de cada alumno:";		
		Escribir "";
		Para j = 0 Hasta 4 Hacer
			Repetir
				Escribir "    Nota:" j + 1 Sin Saltar;
				leer notas[i,j];
				Si notas[i,j] < 1 O notas[i,j] > 10 Entonces
					Escribir "";
					Escribir "    :( Error! Has introducido un valor inválido. Tienes que introducir una nota entre (1 - 10).";
					Escribir "";
					Escribir "    Presione una tecla para continuar ... ";
					Esperar Tecla;
					Limpiar Pantalla;
				Fin Si
			Hasta Que notas[i,j] >= 1 y notas[i,j] <= 10;
			promAlumno[i] = promAlumno[i] + notas[i,j];
			mostrarAlumnos[i] = mostrarAlumnos[i] + "    Nota" + ConvertirATexto(j + 1) + " : " + ConvertirATexto(notas[i,j]);
		Fin Para
		promAlumno[i] = REDON((promAlumno[i]/cantNotas)*100)/100;
		mostrarAlumnos[i] = mostrarAlumnos[i] + "    Promedio : " + ConvertirATexto(promAlumno[i]);
		Limpiar Pantalla;
		Escribir "";
		Escribir "    Informe notas de alumnos.";
		Escribir "------------------------------------------------------------------------------------------------------------";
		Para iMostrarAlumnos = 0 Hasta i Hacer
			Escribir mostrarAlumnos[iMostrarAlumnos];
		Fin Para
	Fin Para	
	Escribir "";
	
FinAlgoritmo
