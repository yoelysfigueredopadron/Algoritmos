Funcion IngreseMatricula (matricula Por Referencia, indiceRegistro)
	Repetir		
		Escribir "    Introduzca matrícula del camión" indiceRegistro + 1 " : ";
		Leer matricula;
		matricula = MAYUSCULAS(matricula);
		Si (LONGITUD(matricula) = 6) Y (SUBCADENA(matricula,0,0) >= 'A' Y SUBCADENA(matricula,0,0) <= 'Z') Y (SUBCADENA(matricula,1,1) >= 'A' Y SUBCADENA(matricula,1,1) <= 'Z') Y (SUBCADENA(matricula,2,2) >= 'A' Y SUBCADENA(matricula,2,2) <= 'Z') Y (SUBCADENA(matricula,3,3) >= '0' Y SUBCADENA(matricula,3,3) <= '9') Y (SUBCADENA(matricula,4,4) >= '0' Y SUBCADENA(matricula,4,4) <= '9') Y (SUBCADENA(matricula,5,5) >= '0' Y SUBCADENA(matricula,5,5) <= '9') Entonces
			Escribir "";
		SiNo
			Si (LONGITUD(matricula) = 7) Y (SUBCADENA(matricula,0,0) >= 'A' Y SUBCADENA(matricula,0,0) <= 'Z') Y (SUBCADENA(matricula,1,1) >= 'A' Y SUBCADENA(matricula,1,1) <= 'Z') Y (SUBCADENA(matricula,2,2) >= '0' Y SUBCADENA(matricula,2,2) <= '9') Y (SUBCADENA(matricula,3,3) >= '0' Y SUBCADENA(matricula,3,3) <= '9') Y (SUBCADENA(matricula,4,4) >= '0' Y SUBCADENA(matricula,4,4) <= '9') Y (SUBCADENA(matricula,5,5) >= 'A' Y SUBCADENA(matricula,5,5) <= 'Z') Y (SUBCADENA(matricula,6,6) >= 'A' Y SUBCADENA(matricula,6,6) <= 'Z') Entonces
				Escribir "";
			SiNo
				Escribir "";	
				Escribir "    :( Error. Ha introducido una matrícula inválida. Por favor, introduzca una matrícula nuevamente, el misma debe tener una longitud de 6 caracteres alfanuméricos donde los 3 primeros sean letras y los tres ultimos sean números o pueden tener 7 caracteres  2 letras 3 números y 2 letras. Ejemplos de matrículas válidas (KNJ605,   NVN285,   MWE478,   AS234QW,   ER443RT, HG912PR).";
				Escribir "";
				Escribir "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
				Escribir  "";
				Escribir  "    Este programa controla el egreso de sus 30 camiones desde la planta y la carga que transportan. Se introducira por teclado su patente, el nombre y apellido del chofer, el tipo de carga que lleva (madera, yerba o té), a qué hora egresó y cuantos cargaron té. Al finalizar el programa mostrará un informe con todos los datos introducidos.";
				Escribir  "";
			Fin Si			
		Fin Si
	Hasta Que ((LONGITUD(matricula) = 7) Y (SUBCADENA(matricula,0,0) >= 'A' Y SUBCADENA(matricula,0,0) <= 'Z') Y (SUBCADENA(matricula,1,1) >= 'A' Y SUBCADENA(matricula,1,1) <= 'Z') Y (SUBCADENA(matricula,2,2) >= '0' Y SUBCADENA(matricula,2,2) <= '9') Y (SUBCADENA(matricula,3,3) >= '0' Y SUBCADENA(matricula,3,3) <= '9') Y (SUBCADENA(matricula,4,4) >= '0' Y SUBCADENA(matricula,4,4) <= '9') Y (SUBCADENA(matricula,5,5) >= 'A' Y SUBCADENA(matricula,5,5) <= 'Z') Y (SUBCADENA(matricula,6,6) >= 'A' Y SUBCADENA(matricula,6,6) <= 'Z')) O ((LONGITUD(matricula) = 6) Y (SUBCADENA(matricula,0,0) >= 'A' Y SUBCADENA(matricula,0,0) <= 'Z') Y (SUBCADENA(matricula,1,1) >= 'A' Y SUBCADENA(matricula,1,1) <= 'Z') Y (SUBCADENA(matricula,2,2) >= 'A' Y SUBCADENA(matricula,2,2) <= 'Z') Y (SUBCADENA(matricula,3,3) >= '0' Y SUBCADENA(matricula,3,3) <= '9') Y (SUBCADENA(matricula,4,4) >= '0' Y SUBCADENA(matricula,4,4) <= '9') Y (SUBCADENA(matricula,5,5) >= '0' Y SUBCADENA(matricula,5,5) <= '9'))
	Si ((LONGITUD(matricula) = 6)) Entonces
		matricula = SUBCADENA(matricula,0,2) + " " + SUBCADENA(matricula,3,5);
	SiNo	
		Si ((LONGITUD(matricula) = 7)) Entonces
			matricula = SUBCADENA(matricula,0,1) + " " + SUBCADENA(matricula,2,4) + " " + SUBCADENA(matricula,5,6);			
		Fin Si
	Fin Si	
FinFuncion

Funcion IngreseNombre (nombre Por Referencia, indiceRegistro)
	Repetir
		Escribir "";
		Escribir "    Ingrese nombre del chofer"  indiceRegistro + 1 " : ";
		Leer nombre;
		Si (nombre <> '') Entonces
			Escribir "";
		SiNo
			Escribir "";	
			Escribir "    :( Error. No puede dejar el campo Nombre vacío. Por favor, introduzca la información nuevamente.";
			Escribir "";
			Escribir "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
			Escribir  "";
			Escribir  "    Este programa controla el egreso de sus 30 camiones desde la planta y la carga que transportan. Se introducira por teclado su patente, el nombre y apellido del chofer, el tipo de carga que lleva (madera, yerba o té), a qué hora egresó y cuantos cargaron té. Al finalizar el programa mostrará un informe con todos los datos introducidos.";
			Escribir  "";
		Fin Si
	Hasta Que (nombre <> '')
Fin Funcion

Funcion IngreseApellido (apellido Por Referencia, indiceRegistro)
	Repetir
		Escribir "";
		Escribir "    Ingrese apellido del chofer" indiceRegistro + 1 " : ";
		Leer apellido;
		Si (apellido <> '') Entonces
			Escribir "";
		SiNo
			Escribir "";	
			Escribir "    :( Error. No puede dejar el campo Apellido vacío. Por favor, introduzca la información nuevamente.";
			Escribir "";
			Escribir "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
			Escribir  "";
			Escribir  "    Este programa controla el egreso de sus 30 camiones desde la planta y la carga que transportan. Se introducira por teclado su patente, el nombre y apellido del chofer, el tipo de carga que lleva (madera, yerba o té), a qué hora egresó y cuantos cargaron té. Al finalizar el programa mostrará un informe con todos los datos introducidos.";
			Escribir  "";
		Fin Si
	Hasta Que (apellido <> '')
Fin Funcion

Funcion IngreseTipoDeCarga(tipoDeCarga Por Referencia, contarTe Por Referencia, indiceRegistro)
	Definir opcionCarga Como Entero;
	opcionCarga = 0;
	
	Repetir
		Escribir "";
		Escribir "    Elija tipo de carga (1-3) para el camión" indiceRegistro + 1 " : ";
		Escribir "";
		Escribir "    1 - Madera";
		Escribir "    2 - Yerba";
		Escribir "    3 - Té";
		Leer opcionCarga;
		Segun opcionCarga Hacer
			1:
				tipoDeCarga = "Madera";
			2:
				tipoDeCarga = "Yerba ";
			3:
				tipoDeCarga = "Té    ";
				contarTe = contarTe + 1;
			De Otro Modo:
				Escribir "    :( Error. Ha selecionado una opción incorrecta. Por favor elija una opción entre (1-3).";
				Escribir "";
				Escribir "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
				Escribir  "";
				Escribir  "    Este programa controla el egreso de sus 30 camiones desde la planta y la carga que transportan. Se introducira por teclado su patente, el nombre y apellido del chofer, el tipo de carga que lleva (madera, yerba o té), a qué hora egresó y cuantos cargaron té. Al finalizar el programa mostrará un informe con todos los datos introducidos.";
				Escribir  "";
		Fin Segun
	Hasta Que (opcionCarga <> 0)
Fin Funcion

Funcion IngreseHoraDeEgreso(hora Por Referencia, indiceRegistro)
	Repetir
		Escribir "";
		Escribir "    Ingrese la hora(0-23) del camión" indiceRegistro + 1 " : ";
		Leer hora;
		hora = TRUNC(hora);
		Si (hora >= 0 Y hora <= 23) Entonces
			Escribir "";
		SiNo
			Escribir "";	
			Escribir "    :( Error. Ha introducido una hora de salida incorrecta, los valores correctos se encuentran dentro del rango de (0-23). Por favor, introduzca la información nuevamente.";
			Escribir "";
			Escribir "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
			Escribir  "";
			Escribir  "    Este programa controla el egreso de sus 30 camiones desde la planta y la carga que transportan. Se introducira por teclado su patente, el nombre y apellido del chofer, el tipo de carga que lleva (madera, yerba o té), a qué hora egresó y cuantos cargaron té. Al finalizar el programa mostrará un informe con todos los datos introducidos.";
			Escribir  "";
		Fin Si
	Hasta Que (hora >= 0 Y hora <= 23)
Fin Funcion

Algoritmo Control_de_Camiones

	Definir registroDeCamiones, matricula, nombre, apellido Como Caracter;
	Definir indiceRegistro, cantidadCamiones, contar, contarTe, hora Como Entero;
	Definir tipoDeCarga Como Caracter;
	
	Dimension registroDeCamiones[30];
	matricula = '';
	nombre = '';
	apellido = '';
	cantidadCamiones = 30;
	contar = 0;
	contarTe = 0;
	hora = 0;
	tipoDeCarga = '';
	
	// inicializamos los registros en blanco
	Para indiceRegistro = 0 Hasta cantidadCamiones - 1 Hacer
		registroDeCamiones[indiceRegistro] = '';
	Fin Para
	
	Repetir
		Escribir  "";
		Escribir  "    Este programa controla el egreso de sus 30 camiones desde la planta y la carga que transportan. Se introducira por teclado su patente, el nombre y apellido del chofer, el tipo de carga que lleva (madera, yerba o té), a qué hora egresó y cuantos cargaron té. Al finalizar el programa mostrará un informe con todos los datos introducidos.";
		Escribir  "";
		Escribir "    Ingrese la información para los 30 camiones de la empresa.";
		Escribir "";	
		Para indiceRegistro = 0 Hasta cantidadCamiones - 1 Hacer
			IngreseMatricula(matricula, indiceRegistro);
			IngreseNombre(nombre, indiceRegistro);
			IngreseApellido(apellido, indiceRegistro);
			IngreseTipoDeCarga(tipoDeCarga, contarTe, indiceRegistro);
			IngreseHoraDeEgreso(hora, indiceRegistro);
			registroDeCamiones[indiceRegistro] = "    Matricula: " + matricula + "    Nombre del Chofer: " + nombre + "    Apellido del Chofer: " + apellido + "    Tipo de carga: " + tipoDeCarga + "    Hora de salida: " + ConvertirATexto(hora) + ":00";
			Limpiar Pantalla;
			Escribir  "";
			Escribir  "    Este programa controla el egreso de sus 30 camiones desde la planta y la carga que transportan. Se introducira por teclado su patente, el nombre y apellido del chofer, el tipo de carga que lleva (madera, yerba o té), a qué hora egresó y cuantos cargaron té. Al finalizar el programa mostrará un informe con todos los datos introducidos.";
			Escribir  "";
			Escribir "    Ingrese la información para los 30 camiones de la empresa.";
			Escribir "";	
			contar = contar + 1;
		Fin Para
	Hasta Que (contar = cantidadCamiones)
	
	Limpiar Pantalla;
	Escribir "";
	Escribir "    Informe de camiones de la empresa:";
	Escribir "-------------------------------------------------------------------------------------------------------------------------------";
	Escribir "    De los camiones de la empresa " contarTe " cargaron Té.";
	Escribir "";
	Para indiceRegistro = 0 Hasta cantidadCamiones - 1 Hacer
		Escribir registroDeCamiones[indiceRegistro];
	Fin Para
	Escribir "";
	
	Escribir "";
	Escribir "    :) Muchas gracias por usar nuestro programa.";
	Escribir "";
	
FinAlgoritmo
