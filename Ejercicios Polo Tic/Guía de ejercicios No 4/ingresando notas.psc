Algoritmo IngresandoNotas
	
	Definir notas, indiceNotas, indiceMostrarNotas, cantidadNotas, notaMasAlta Como Entero;
	Definir totalNotas Como Real;
	Definir arregloMostrarNotas Como Caracter;
	Dimension notas[25];
	Dimension arregloMostrarNotas[25];
	
	indiceNotas = 0;
	indiceMostrarNotas = 0;
	cantidadNotas = 0;
	notaMasAlta = 0;
	totalNotas = 0;
	
	Repetir
		Escribir "";
		Escribir "    Este programa cargará N cantidad de notas de un alumno. Luego de cargar las notas se mostrará la nota más alta y el promedio de todas ellas. ";
		Escribir "";
		Escribir "    Ingrese la cantidad de notas del alumno (1-25)";
		Leer cantidadNotas;
		Si (cantidadNotas > 0 Y cantidadNotas <= 25) Entonces
			Para indiceNotas = 0 Hasta cantidadNotas - 1 Hacer
				Repetir
					Escribir "";
					Escribir "    Debe introducir una nota entre (1-10)";
					Escribir "";
					Escribir "    Ingrese nota" indiceNotas + 1 " : " Sin Saltar;
					Leer notas[indiceNotas];
					Si (notas[indiceNotas] < 1 O notas[indiceNotas] > 10) Entonces
						arregloMostrarNotas[indiceNotas] = '';
						Escribir "";
						Escribir "    :( Error. Valor de nota inválida. Debe introducir un valor númerico entre (1-10)";
						Escribir "";
						Escribir  "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Este programa cargará N cantidad de notas de un alumno. Luego de cargar las notas se mostrará la nota más alta y el promedio de todas ellas. ";
						Escribir "";
						Escribir "    Debe ingresar " cantidadNotas " notas";
						Para indiceMostrarNotas = 0 Hasta indiceNotas Con Paso 1 Hacer
							Si (arregloMostrarNotas[indiceMostrarNotas] <> '') Entonces
								Escribir arregloMostrarNotas[indiceMostrarNotas];
							Fin Si
						Fin Para
						Escribir "";
					SiNo
						arregloMostrarNotas[indiceNotas] = "    Nota" + CONVERTIRATEXTO(indiceNotas + 1) + " : " + CONVERTIRATEXTO(notas[indiceNotas]) + " punto(s).";
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Este programa cargará N cantidad de notas de un alumno. Luego de cargar las notas se mostrará la nota más alta y el promedio de todas ellas. ";
						Escribir "";
						Escribir "    Debe ingresar " cantidadNotas " notas";
						Escribir "";
						Para indiceMostrarNotas = 0 Hasta indiceNotas Con Paso 1 Hacer
							Si (arregloMostrarNotas[indiceMostrarNotas] <> '') Entonces
								Escribir arregloMostrarNotas[indiceMostrarNotas];
							Fin Si
						Fin Para
						Escribir "";
					Fin Si
				Hasta Que (notas[indiceNotas] >= 1 Y notas[indiceNotas] <= 10)
				
				// Calculamos promedio de notas
				totalNotas = totalNotas + notas[indiceNotas];
			FinPara
		SiNo
			Escribir "";
			Escribir "    :( Error. Ha introducido una cantidad de notas inválida. Por favor ingrese un valor entre (1-25). Si desea introducir más de 25 notas por favor comuniquece con Yoelys el desarrollador del programa para agregarle más características de acuerdo a sus necesidades. Gracias :)";
			Escribir "";
			Escribir  "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
		Fin Si		
	Hasta Que (cantidadNotas > 0 Y cantidadNotas <= 25)
	
	// Obtenemos la nota mas Alta
	notaMasAlta = notas[0];
	Para indiceNotas = 0 Hasta cantidadNotas - 1 Con Paso 1 Hacer
		Si (notaMasAlta < notas[indiceNotas]) Entonces
			notaMasAlta = notas[indiceNotas];
		Fin Si
	Fin Para
	
	Escribir "";
	Escribir "    La nota más alta del alumno es " notaMasAlta " punto(s).";
	Escribir "    El alumno tiene un promedio de " REDON((totalNotas/cantidadNotas)*10)/10 " punto(s).";
	Escribir "";
	
FinAlgoritmo