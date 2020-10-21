Algoritmo Aprobados_Y_Desaprobados
	
	Definir notasAlumnos, aprobados, desaprobados, indiceNotasAlumnos, cantidadAlumnos, indiceMostrarNotas Como Entero;
	Definir mostrarNotas Como Caracter;
	Dimension notasAlumnos[1000];
	Dimension mostrarNotas[1000];
	
	aprobados = 0;
	desaprobados = 0;
	indiceNotasAlumnos = 0;
	cantidadAlumnos = 0;
	indiceMostrarNotas = 0;
	
	Repetir
		Escribir "";
		Escribir "    Este programa cargará X cantidad de notas (hasta 1000) de alumnos. Luego de cargar todas las notas se mostrará la cantidad de alumnos aprobados y desprobados tomando como criterios que las notas de los mismo deben estar en un rango de (1-10). Todos los alumnos con puntuación igual o mayor que 6 estará aprobado en caso de la puntuación ser menor queda desaprobado.";
		Escribir "";
		Escribir "    Ingrese la cantidad de notas de alumnos a introducir (1-1000)";
		Leer cantidadAlumnos;
		Si (cantidadAlumnos > 0 Y cantidadAlumnos <= 1000) Entonces
			Para indiceNotasAlumnos = 0 Hasta cantidadAlumnos - 1 Hacer
				Repetir
					Escribir "";
					Escribir "    Debe introducir una nota para el alumno entre (1-10)";
					Escribir "";
					Escribir "    Ingrese nota de Alumno N°" indiceNotasAlumnos + 1 " : " Sin Saltar;
					Leer notasAlumnos[indiceNotasAlumnos];
					// validamos que se introduzca un valor entre (1 y 10)
					Si (notasAlumnos[indiceNotasAlumnos] < 1 O notasAlumnos[indiceNotasAlumnos] > 10) Entonces
						mostrarNotas[indiceNotasAlumnos] = '';
						Escribir "";
						Escribir "    :( Error. Valor de nota inválida. Debe introducir un valor númerico entre (1-10)";
						Escribir "";
						Escribir  "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Este programa cargará X cantidad de notas (hasta 1000) de alumnos. Luego de cargar todas las notas se mostrará la cantidad de alumnos aprobados y desprobados tomando como criterios que las notas de los mismo deben estar en un rango de (1-10). Todos los alumnos con puntuación igual o mayor que 6 estará aprobado en caso de la puntuación ser menor queda desaprobado.";
						Escribir "";
						Escribir "    Debe ingresar " cantidadAlumnos " nota(s) de alumno(s).";
						// Mostramos las notas de los alumnos que se han introducido
						Para indiceMostrarNotas = 0 Hasta indiceNotasAlumnos Hacer
							Si (mostrarNotas[indiceMostrarNotas] <> '') Entonces
								Escribir mostrarNotas[indiceMostrarNotas];
							Fin Si
						Fin Para
						Escribir "";
					SiNo
						mostrarNotas[indiceNotasAlumnos] = "    Nota de alumno N°" + CONVERTIRATEXTO(indiceNotasAlumnos + 1) + " : " + CONVERTIRATEXTO(notasAlumnos[indiceNotasAlumnos]) + " punto(s).";
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Este programa cargará X cantidad de notas (hasta 1000) de alumnos. Luego de cargar todas las notas se mostrará la cantidad de alumnos aprobados y desprobados tomando como criterios que las notas de los mismo deben estar en un rango de (1-10). Todos los alumnos con puntuación igual o mayor que 6 estará aprobado en caso de la puntuación ser menor queda desaprobado.";
						Escribir "";
						Escribir "    Debe ingresar " cantidadAlumnos " notas de alumnos.";
						Escribir "";
						// Mostramos las notas de los alumnos que se han introducido
						Para indiceMostrarNotas = 0 Hasta indiceNotasAlumnos Hacer
							Si (mostrarNotas[indiceMostrarNotas] <> '') Entonces
								Escribir mostrarNotas[indiceMostrarNotas];
							Fin Si
						Fin Para
						Escribir "";
						
						// Contamos alumnos aprobados y desaprobados
						Si (notasAlumnos[indiceNotasAlumnos] >= 6 Y notasAlumnos[indiceNotasAlumnos] <= 10) Entonces
							aprobados = aprobados + 1;							
						SiNo
							desaprobados = desaprobados + 1;
						Fin Si
					Fin Si
				Hasta Que (notasAlumnos[indiceNotasAlumnos] >= 1 Y notasAlumnos[indiceNotasAlumnos] <= 10)
			FinPara
		SiNo
			Escribir "";
			Escribir "    :( Error. Ha introducido una cantidad de alumnos inválida. Por favor ingrese un valor entre (1-1000). Si desea introducir más de 1000 alumnos por favor comuniquece con Yoelys el desarrollador del programa para agregarle más características de acuerdo a sus necesidades. Gracias :)";
			Escribir "";
			Escribir  "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
		Fin Si		
	Hasta Que (cantidadAlumnos > 0 Y cantidadAlumnos <= 1000)
	
	Escribir "";
	Escribir "    Informe notas de alumnos:";
	Escribir "-----------------------------------------------------";
	Escribir "    Total alumnos: " cantidadAlumnos;
	Escribir "    Alumnos aprobado(s): " aprobados;
	Escribir "    Alumnos desaprobado(s): " desaprobados;
	Escribir "";
	
FinAlgoritmo