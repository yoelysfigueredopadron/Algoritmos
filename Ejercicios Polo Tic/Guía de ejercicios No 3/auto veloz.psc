Algoritmo AutoVeloz
	
	Definir auto, competidor, mejorAuto, mejorCompetidor Como Entero;
	Definir tiempo, mejorTiempo Como Real;
	
	auto = 0;
	competidor = 1;
	mejorAuto = 0;
	mejorCompetidor = 0;
	tiempo = 0;
	mejorTiempo = 0;
	
	Repetir
		Si (competidor = 1) Entonces
			Mientras (auto <= 0) Hacer
				Escribir "";
				Escribir "    Este programa registra el tiempo de 12 competidores en una carrera de autos y nos mostrará en pantalla al final cual fue el auto que hizo el mejor tiempo en la competencia.";
				Escribir "";
				Escribir "    Ingrese el número de auto del competidor N°" competidor;
				Leer auto;
				Si (auto <= 0) Entonces
					Escribir "";
					Escribir "    Debe introducir un número para el auto mayor que cero (0).";
				Fin Si
				Escribir "";
				Escribir  "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
			Fin Mientras
			Mientras (tiempo <= 0) Hacer
				Escribir "";
				Escribir "    Este programa registra el tiempo de 12 competidores en una carrera de autos y nos mostrará en pantalla al final cual fue el auto que hizo el mejor tiempo en la competencia.";
				Escribir "";
				Escribir "    Competidor N°" competidor;
				Escribir "--------------------------------";
				Escribir "    Auto: " auto;
				Escribir "";
				Escribir "    Ingrese el tiempo en segundos realizado por el auto N°" auto " en la carrera.";
				Leer tiempo;
				Si (tiempo > 0) Entonces
					mejorTiempo = tiempo;
					mejorAuto = auto;
					mejorCompetidor = competidor;
					competidor = competidor + 1;
				SiNo
					Escribir "";
					Escribir "    El auto debe tener un tiempo superior a cero (0) para determinar cuando termino la carrera. Por favor introduzca el tiempo en que el auto termina la carrera.";
				Fin Si
				Escribir "";
				Escribir  "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
			Fin Mientras
			auto = 0;
			tiempo = 0;
		SiNo
			Mientras (auto <= 0) Hacer
				Escribir "";
				Escribir "    Este programa registra el tiempo de 12 competidores en una carrera de autos y nos mostrará en pantalla al final cual fue el auto que hizo el mejor tiempo en la competencia.";
				Escribir "";
				Escribir "    Ingrese el número de auto del competidor N°" competidor;
				Leer auto;
				Si (auto <= 0) Entonces
					Escribir "";
					Escribir "    Debe introducir un número para el auto mayor que cero (0).";
				Fin Si
				Escribir "";
				Escribir  "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
			Fin Mientras
			Mientras (tiempo <= 0) Hacer
				Escribir "";
				Escribir "    Este programa registra el tiempo de 12 competidores en una carrera de autos y nos mostrará en pantalla al final cual fue el auto que hizo el mejor tiempo en la competencia.";
				Escribir "";
				Escribir "    Competidor N°" competidor;
				Escribir "--------------------------------";
				Escribir "    Auto: " auto;
				Escribir "";
				Escribir "    Ingrese el tiempo en segundos realizado por el auto N°" auto " en la carrera.";
				Leer tiempo;
				Si (tiempo > 0 Y mejorTiempo > tiempo) Entonces
					mejorTiempo = tiempo;
					mejorAuto = auto;
					mejorCompetidor = competidor;
				SiNo
					Si (tiempo <= 0) Entonces
						Escribir "";
						Escribir "    El auto debe tener un tiempo superior a cero (0) para determinar cuando termino la carrera. Por favor introduzca el tiempo en que el auto termina la carrera.";
					Fin Si
				Fin Si
				Escribir "";
				Escribir  "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
			Fin Mientras
			competidor = competidor + 1;
			auto = 0;
			tiempo = 0;
		Fin Si
	Hasta Que (competidor > 12)
	Escribir "";
	Escribir "    Competidor N°" mejorCompetidor;
	Escribir "--------------------------------";
	Escribir "    Auto: " mejorAuto;
	Escribir "    Tiempo: " mejorTiempo;
	Escribir "";
	Escribir "    El mejor auto es el N°" mejorAuto " del competidor N°" mejorCompetidor " que realizo el mejor tiempo en " mejorTiempo " segundos";
	Escribir "";
FinAlgoritmo