Algoritmo CalcularSueldoEmpleado
	
	Definir sueldoRepositor, sueldoCajero, sueldoSupervisor, sueldoNeto, jubilacion, obraSocial, bonoRepositor Como Real;
	Definir opcionMenu Como Caracter;
	
	sueldoRepositor = 0;
	sueldoCajero = 0;
	sueldoSupervisor = 0;
	sueldoNeto = 0;
	jubilacion = 0;
	obraSocial = 0;
	bonoRepositor = 0;
	opcionMenu = '';	
	
	Repetir
		Escribir "";
		Escribir "    Este programa calcular el sueldo neto de un empleado apartir de su sueldo en bruto además de se calculará los descuentos respetivos de un 11% por jubilación y un 3% por Obra Social. Los puestos de los mismos pueden tener 3 categorías: 1-repositor, 2-cajero y 3-supervisor. En caso del empleado ser un repositor recibirá un bono en compras que equivale al 8% de su sueldo";
		Escribir "";
		Escribir "    Elija una opción del menú entre (1-3) para la categoría del empleado o (4) si desea salir del programa.";
		Escribir "    1- Repositor";
		Escribir "    2- Cajero";
		Escribir "    3- Supervisor";
		Escribir "    4- Salir";
		Leer opcionMenu;
		// En caso de que el usuario introduzca un cadena de texto numérica con un valor decimal convertimos la misma a número, con la funsión TRUNC() le quitamos los decimales para quedarnos solamente con el valor entero y luego la convertimos a texto asignando el valor resultante a la misma variable categoria
		opcionMenu = CONVERTIRATEXTO(TRUNC(CONVERTIRANUMERO(opcionMenu)));
		
		Segun opcionMenu Hacer
			'1':
				
				Escribir "";
				Escribir "    Ha selecionado la categoría(" opcionMenu ") el empleado Repositor";
				Escribir "";
				Escribir "    Ingrese el sueldo bruto del empleado Repositor para calcular su sueldo neto:";
				Leer sueldoRepositor;
				
				Si (sueldoRepositor > 0) Entonces
					// Calculamos descuentos de jubilacion, Obra Social además del bono que debe recibir el repositor
					jubilacion = sueldoRepositor * 0.11;
					obraSocial = sueldoRepositor * 0.03;
					bonoRepositor = sueldoRepositor * 0.08;
					
					// Calculamos el sueldo neto del Repositor
					sueldoNeto = sueldoRepositor - jubilacion - obraSocial + bonoRepositor;
					Escribir "";
					Escribir "    El sueldo neto del empleado repositor es $" REDON(sueldoNeto*100)/100;
					Escribir "    La deducción correspondiente a la jubilación es $" REDON(jubilacion*100)/100;
					Escribir "    La deducción correspondiente a la Obra Social es $" REDON(obraSocial*100)/100;
					Escribir "    El bono correspondiente al salario de repositor es $" REDON(bonoRepositor*100)/100;
				SiNo
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Debe introducir un valor mayor que cero para calcular el salario neto del empleado Repositor además de sus correspondientes descuentos por jubilación, Obra Social y bonificación que recibe por su salario. El programa lo regresará al menú principal para que vuelva a realizar la operación en caso de haber introducido un valor incorrecto. También podrá elegir una categoría diferente de ser necesario o simplemente salir del programa.";
					opcionMenu = '0';
					Escribir "";
					Escribir "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				Fin Si
			'2':
				Escribir "";
				Escribir "    Ha selecionado la categoría(" opcionMenu ") el empleado Cajero";
				Escribir "";
				Escribir "    Ingrese el sueldo bruto del empleado Cajero para calcular su sueldo neto:";
				Leer sueldoCajero;
				
				Si (sueldoCajero > 0) Entonces
					// Calculamos descuentos de jubilacion y Obra Social del Cajero
					jubilacion = sueldoCajero * 0.11;
					obraSocial = sueldoCajero * 0.03;
					
					// Calculamos el sueldo neto del Cajero
					sueldoNeto = sueldoCajero - jubilacion - obraSocial;
					Escribir "";
					Escribir "    El sueldo neto del empleado cajero es $" REDON(sueldoNeto*100)/100;
					Escribir "    La deducción correspondiente a la jubilación es $" REDON(jubilacion*100)/100;
					Escribir "    La deducción correspondiente a la obra social es $" REDON(obraSocial*100)/100;
				SiNo
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Debe introducir un valor mayor que cero para calcular el salario neto del empleado Cajero además de sus correspondientes descuentos por jubilación y Obra Social. El programa lo regresará al menú principal para que vuelva a realizar la operación en caso de haber introducido un valor incorrecto. También podrá elegir una categoría diferente de ser necesario o simplemente salir del programa.";
					opcionMenu = '0';
					Escribir "";
					Escribir "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				Fin Si
			'3':
				Escribir "";
				Escribir "    Ha selecionado la categoría(" opcionMenu ") el empleado Supervisor";
				Escribir "";
				Escribir "    Ingrese el sueldo bruto del empleado Supervisor para calcular su sueldo neto:";
				Leer sueldoSupervisor;
				
				Si (sueldoSupervisor > 0) Entonces
					// Calculamos descuentos de jubilacion y Obra Social del Supervisor
					jubilacion = sueldoSupervisor * 0.11;
					obraSocial = sueldoSupervisor * 0.03;
					
					// Calculamos el sueldo neto del Supervisor
					sueldoNeto = sueldoSupervisor - jubilacion - obraSocial;
					Escribir "";
					Escribir "    El sueldo neto del empleado Supervisor es $" REDON(sueldoNeto*100)/100;
					Escribir "    La deducción correspondiente a la jubilación es $" REDON(jubilacion*100)/100;
					Escribir "    La deducción correspondiente a la obra social es $" REDON(obraSocial*100)/100;
				SiNo
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Debe introducir un valor mayor que cero para calcular el salario neto del empleado Supervisor además de sus correspondientes descuentos por jubilación y Obra Social. El programa lo regresará al menú principal para que vuelva a realizar la operación en caso de haber introducido un valor incorrecto. También podrá elegir una categoría diferente de ser necesario o simplemente salir del programa.";
					opcionMenu = '0';
					Escribir "";
					Escribir "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				Fin Si
			'4':
				Escribir "";
				Escribir "    Ha seleccionado salir.";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "";
				Escribir "    :( Error. Usted ha introducido una opción de menú incorrecta. Por favor, reingrese una opción entre (1-4).";
				Esperar 5 Segundos; 
				Limpiar Pantalla;
		Fin Segun
	Hasta Que ((CONVERTIRANUMERO(opcionMenu) > 0) Y (CONVERTIRANUMERO(opcionMenu) < 5))
		
	Escribir "";
	Escribir "    Gracias por usar nuestro programa de calculo de salario  :)";
	Escribir "";
	
FinAlgoritmo