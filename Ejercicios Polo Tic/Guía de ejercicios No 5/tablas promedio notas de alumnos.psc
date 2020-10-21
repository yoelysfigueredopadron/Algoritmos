Algoritmo Tabla_promedio_NotasAlumno
	
	Definir i, j Como Entero;
	Definir tablaNotasAlumno Como Caracter;
	Definir notas, promedio Como Real;
	
	Dimension tablaNotasAlumno[5];
	Dimension notas[4, 3];
	Dimension promedio[4, 1];
	
	Escribir "";
	Escribir "    Este programa leera las notas de algunos estudiantes y mostrará una tabla con todos los datos introducidos y el promedio de cada estudiante.";
	Escribir "";
	
	// Crear tabla	
	tablaNotasAlumno[0] = "  ||             ||" + "   Nota 1   ||" + "   Nota 2   ||" + "   Nota 3   ||" + "   Promedio   ||";	
	Para i = 1 Hasta 4 Hacer
		tablaNotasAlumno[i] = "  ||  Alumno " + ConvertirATexto(i) + "   ||" + "     0      ||" + "     0      ||" + "     0      ||" + "       ?      ||";
	Fin Para
	
	Escribir "";
	// Mostrar tabla
	Escribir "  ||=======================================================================||";
	Para i = 0 Hasta 4 Hacer
		Escribir tablaNotasAlumno[i];
		Escribir "  ||=======================================================================||";
	Fin Para
	Escribir "";
	Escribir "    Presione una tecla para continuar ...";
	Esperar Tecla;
	Limpiar Pantalla;
	Escribir "";
	
	// inicializamos promedio
	Para i = 0 Hasta 3 Hacer
		Para j = 0 Hasta 0 Hacer
			promedio[i, j] = 0;
		Fin Para
	Fin Para
	
	Para i = 0 Hasta 3 Hacer
		Escribir "    Intoduzca notas:";
		Escribir "    ------------------------------------------------";
		Para j = 0 Hasta 2 Hacer
			Escribir "    Alumno" i + 1 " Nota" j + 1 " : " Sin Saltar;
			Leer notas[i, j];
			promedio[i, 0] = promedio[i, 0] + notas[i, j];
		Fin Para
		Escribir "";
		Escribir "";
	Fin Para
	
	// después de  acumular promedio lo dividimos entre las tres notas
	Para i = 0 Hasta 3 Hacer
		Para j = 0 Hasta 0 Hacer
			promedio[i, j] = REDON((promedio[i, j]/3)*100)/100;
		Fin Para
	Fin Para
	
	// borrar datos de tabla
	Para i = 1 Hasta 4 Hacer
		tablaNotasAlumno[i] = "  ||  Alumno " + ConvertirATexto(i) + "   ||";
	Fin Para
	
	// Introducimos las notas
	Para i = 1 Hasta 4 Hacer
		tablaNotasAlumno[i] = "  ||  Alumno " + ConvertirATexto(i) + "   ||" + "     " + ConvertirATexto(notas[i - 1, 0]) + "        " + "     " + ConvertirATexto(notas[i - 1, 1]) + "        " + "     " + ConvertirATexto(notas[i - 1, 2]) + "        ";
	Fin Para
	
	// agregamos totales a la tabla
	Para i = 0 Hasta 3 Hacer
		Para j = 0 Hasta 0 Hacer
			tablaNotasAlumno[i + 1] = tablaNotasAlumno[i + 1] + "   " + ConvertirATexto(promedio[i, j]) + "   ";
		Fin Para
	Fin Para
	
	Escribir "";
	// Mostrar tabla
	Escribir "  ||=======================================================================||";
	Para i = 0 Hasta 4 Hacer
		Escribir tablaNotasAlumno[i];
		Escribir "  ||=======================================================================||";
	Fin Para
	Escribir "";
		
FinAlgoritmo