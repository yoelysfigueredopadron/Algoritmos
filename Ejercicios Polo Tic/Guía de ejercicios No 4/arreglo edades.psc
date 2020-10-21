Algoritmo ArregloEdades
	
	Definir edades, edadMasJoven, indiceEdades, indiceEdadesPersonas, totalSumaEdades Como Entero;
	Definir arregloEdadesPersonas Como Caracter;
	Dimension edades[20];
	Dimension arregloEdadesPersonas[20];
	
	edadMasJoven = 0;
	indiceEdades = 0;
	indiceEdadesPersonas = 0;
	totalSumaEdades = 0;
	
	Escribir "";
	Escribir "    Este programa ingresará la edad de 20 personas y luego mostrará en pantalla el promedio de la edades y la edad de la persona más joven.";
	Escribir "";	
	Para indiceEdades = 0 Hasta 19 Con Paso 1 Hacer
		Repetir
			Escribir "    Ingrese la edad de la persona N°" indiceEdades + 1 " : " Sin Saltar;
			Leer edades[indiceEdades];
			Si (edades[indiceEdades] <= 0) Entonces
				arregloEdadesPersonas[indiceEdades] = '';
				Escribir "";
				Escribir "    :( Error. Debe introducir una edad válida mayor que cero (0). Por favor vuelva a introducir la edad de la persona.";
				Escribir "";
				Escribir  "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
				Escribir "";
				Escribir "    Este programa ingresará la edad de 20 personas y luego mostrará en pantalla el promedio de la edades y la edad de la persona más joven.";
				Escribir "";
				Para indiceEdadesPersonas = 0 Hasta indiceEdades Con Paso 1 Hacer
					Si (arregloEdadesPersonas[indiceEdadesPersonas] <> '') Entonces
						Escribir arregloEdadesPersonas[indiceEdadesPersonas];
					Fin Si					
				Fin Para
				Escribir "";
			SiNo
				arregloEdadesPersonas[indiceEdades] = "    Edad de persona N°" + CONVERTIRATEXTO(indiceEdades + 1) + " : " + CONVERTIRATEXTO(edades[indiceEdades]) + " año(s).";
				Limpiar Pantalla;
				Escribir "";
				Escribir "    Este programa ingresará la edad de 20 personas y luego mostrará en pantalla el promedio de la edades y la edad de la persona más joven.";
				Escribir "";	
				Para indiceEdadesPersonas = 0 Hasta indiceEdades Con Paso 1 Hacer
					Escribir arregloEdadesPersonas[indiceEdadesPersonas];
				Fin Para
				Escribir "";
			Fin Si			
		Hasta Que (edades[indiceEdades] > 0)
		totalSumaEdades = totalSumaEdades + edades[indiceEdades];
	Fin Para
	
	edadMasJoven = edades[0];
	Para indiceEdades = 1 Hasta 19 Con Paso 1 Hacer
		Si (edadMasJoven > edades[indiceEdades]) Entonces
			edadMasJoven = edades[indiceEdades];
		Fin Si
	Fin Para
	
	Escribir "";
	Escribir "    El promedio de las edades de todas las personas es " Redon(totalSumaEdades/5) " año(s).";
	Escribir "    La persona más joven tiene " edadMasJoven " año(s).";
	Escribir "";
	
FinAlgoritmo