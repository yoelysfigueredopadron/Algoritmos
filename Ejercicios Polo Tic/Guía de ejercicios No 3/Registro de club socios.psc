Algoritmo RegistroClub
	
	Definir socioNum, edad, tipoDeporte, totalSociosTenis, totalSociosFutbol, ultimoSocioNum, ultimaEdad Como Entero;
	Definir totalEdadTenis, totalEdadFutbol Como Real;
	Definir pregunta, ultimoTipoDeporte Como caracter;
	
	socioNum = 0;
	edad = 0;
	tipoDeporte = 0;
	totalSociosTenis = 0;
	totalSociosFutbol = 0;
	ultimoSocioNum = 0;
	ultimaEdad = 0;
	ultimoTipoDeporte = '';	
	totalEdadTenis = 0;
	totalEdadFutbol = 0;
	pregunta = "";
	
	Repetir
		Mientras (socioNum <= 0) Hacer
			Escribir "";
			Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
			Escribir "";
			Escribir "    Introduzca el n�mero de socio del club:";
			Leer socioNum;
			Si (socioNum <= 0) Entonces
				Escribir "";
				Escribir "    :( Error. Debe introducir un n�mero v�lido superior a cero (0).";
				Escribir "";
				Escribir "    Presione una tecla para continuar ...";
				Escribir "";
				Esperar Tecla;
			Fin Si
			Limpiar Pantalla;
		Fin Mientras
		ultimoSocioNum = socioNum;
		Mientras (edad <= 0) Hacer
			Escribir "";
			Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
			Escribir "";
			Escribir "";
			Escribir "    N� socio: " socioNum;
			Escribir "------------------------------------------------";
			Escribir "";
			Escribir "    Ingrese la edad del socio N�" socioNum;
			Leer edad;
			Si (edad <= 0) Entonces
				Escribir "";
				Escribir "    :( Error. Debe introducir una edad v�lida superior a cero (0).";
				Escribir "";
				Escribir "    Presione una tecla para continuar ...";
				Escribir "";
				Esperar Tecla;
			Fin Si
			Limpiar Pantalla;
		Fin Mientras
		ultimaEdad = edad;
		Repetir
			Escribir "";
			Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
			Escribir "";
			Escribir "    N� socio: " socioNum;
			Escribir "------------------------------------------------";
			Escribir "    Edad: " edad;
			Escribir "";
			Escribir "";
			Escribir "    Seleccione el tipo de deporte que pr�ctica el socio N�" socioNum " del Club.";
			Escribir "    1- Tenis";
			Escribir "    2- Rugby";
			Escribir "    3- Voley";
			Escribir "    4- Hockey";
			Escribir "    5- F�tbol";
			Escribir "    6- Salir";
			Leer tipoDeporte;
			Escribir "";
			Segun tipoDeporte Hacer
				1:
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
					Escribir "";
					Escribir "    N� socio: " socioNum;
					Escribir "------------------------------------------------";
					Escribir "    Edad: " edad;
					Escribir "    Deporte: Tenis";
					Escribir "";
					totalSociosTenis = totalSociosTenis + 1;
					totalEdadTenis = totalEdadTenis + edad;
					ultimoTipoDeporte = 'Tenis';
				2:
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
					Escribir "";
					Escribir "    N� socio: " socioNum;
					Escribir "------------------------------------------------";
					Escribir "    Edad: " edad;
					Escribir "    Deporte: Rugby";
					Escribir "";
					ultimoTipoDeporte = 'Rugby';
				3:
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
					Escribir "";
					Escribir "    N� socio: " socioNum;
					Escribir "------------------------------------------------";
					Escribir "    Edad: " edad;
					Escribir "    Deporte: Voley";
					Escribir "";
					ultimoTipoDeporte = 'Voley';
				4:
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
					Escribir "";
					Escribir "    N� socio: " socioNum;
					Escribir "------------------------------------------------";
					Escribir "    Edad: " edad;
					Escribir "    Deporte: Hockey";
					Escribir "";
					ultimoTipoDeporte = 'Hockey';
				5:
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
					Escribir "";
					Escribir "    N� socio: " socioNum;
					Escribir "------------------------------------------------";
					Escribir "    Edad: " edad;
					Escribir "    Deporte: F�tbol";
					Escribir "";
					totalSociosFutbol = totalSociosFutbol + 1;
					totalEdadFutbol = totalEdadFutbol + edad;
					ultimoTipoDeporte = 'F�tbol';
				6:	
					Escribir "";
					Escribir "    Ha elegido salir del programa.";
					Escribir "";
				De Otro Modo:
					Escribir "";
					Escribir "    :( Error de opci�n de men�. Debe ingresar una opci�n entre (1-6).";
					Escribir "";
					Escribir  "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
			Fin Segun
		Hasta Que (tipoDeporte > 0 Y tipoDeporte < 7)
		
		Repetir
			Escribir "    �Desea salir del programa registro de socio Club? (S/N)";
			Leer pregunta;
			Limpiar Pantalla;
			Si (pregunta = 'S' O pregunta = 's') Entonces
				Escribir "";
				Escribir "    Ha elegido salir del programa.";
				Escribir "";
			SiNo
				Si (pregunta = 'N' O pregunta = 'n') Entonces
					Escribir "";
					Escribir "    Vamos a introducir los datos de un nuevo socio del club.";
					Escribir "";
					Escribir "    Presione una tecla para continuar ...";
					Escribir "";
					Esperar Tecla;
					Limpiar Pantalla;
					socioNum = 0;
					edad = 0;
				SiNo
					Escribir "";
					Escribir "    :( Error. Presione (S) si desea salir o (N) en caso contrario.";
					Escribir "";
					Escribir "    Presione una tecla para continuar ...";
					Escribir "";
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa registrar� los datos de los socios del Club (n�mero de socio, edad, deporte que pr�ctica). Al final nos mostrar� el detalle cuantos socios practican tenis y cuantos f�tbol adem�s del promedio de la edad en estos deportes.";
					Escribir "";
					Escribir "    N� socio: " socioNum;
					Escribir "------------------------------------------------";
					Escribir "    Edad: " edad;
					Escribir "    Deporte: " ultimoTipoDeporte;
					Escribir "";
				Fin Si
			Fin Si
		Hasta Que (pregunta = 'S' O pregunta = 's' O pregunta = 'N' O pregunta = 'n')	
	Hasta Que (pregunta = 'S' O pregunta = 's');
	Si (totalSociosTenis = 0) Entonces
		Escribir "";
		Escribir  "    No se han registrado socios en club que practiquen tenis hasta ahora.";
		Escribir "";
	SiNo
		Escribir "";
		Escribir "    Tenemos un total de " totalSociosTenis " socio(s) que practica(n) tenis con una edad promedio de " REDON(totalEdadTenis/totalSociosTenis) " a�os.";
		Escribir "";
	Fin Si
	Si (totalSociosFutbol = 0) Entonces
		Escribir "";
		Escribir  "    No se han registrado socios en club que practiquen f�tbol hasta ahora.";
		Escribir "";
	SiNo
		Escribir "";
		Escribir "    Tenemos un total de " totalSociosFutbol " socio(s) que practica(n) f�tbol con una edad promedio de " REDON(totalEdadFutbol/totalSociosFutbol) " a�os.";
		Escribir "";	
	Fin Si
	Escribir "";	
	Escribir "    :) Gracias por usar nuestro programa.";	
	Escribir "";	
FinAlgoritmo