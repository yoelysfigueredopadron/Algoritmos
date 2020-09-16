Algoritmo EmpresaPagarSueldos
	
	Definir sueldoBruto, sueldoNeto, sueldoMaestranza, sueldoAdministracion, sueldoGerencia, jubilacion, obraSocial, descuentoClub Como Real;
	Definir opcionMenu, consulta, DNI Como Caracter;
	
	sueldoBruto = 0;
	sueldoNeto = 0;
	sueldoMaestranza = 0;
	sueldoAdministracion = 0;
	sueldoGerencia = 0;	
	jubilacion = 0;
	obraSocial = 0;
	descuentoClub = 0;
	opcionMenu = '';
	consulta = '';
	DNI = '';
		
	Repetir
		Escribir "";
		Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
		Escribir "";
		Escribir "    Ingrese una categor�a (1-3) correspondiente al empleado para calcular su sueldo Neto o ingrese (4) si desea salir del programa.";
		Escribir "    1- Maestranza";
		Escribir "    2- Administraci�n";
		Escribir "    3- Gerencia";
		Escribir "    4- Salir";
		Leer opcionMenu;
		// En caso de que el usuario introduzca un cadena de texto num�rica con un valor decimal convertimos la misma a n�mero, con la funsi�n TRUNC() le quitamos los decimales para quedarnos solamente con el valor entero y luego la convertimos a texto asignando el valor resultante a la misma variable categoria
		opcionMenu = CONVERTIRATEXTO(TRUNC(CONVERTIRANUMERO(opcionMenu)));
		
		Segun opcionMenu Hacer
			'1':
				Repetir
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
					Escribir "";
					Escribir "    Ha selecionado la categor�a(" opcionMenu ") Maestranza";
					Escribir "";
					Escribir "    Ingrese el DNI del empleado:";
					Leer DNI;
					Si (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+') Entonces
						Escribir "";				
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						Escribir "";	
						Escribir "    :( Error. Ha introducido un DNI inv�lido. Por favor, introduzca un DNI nuevamente, el mismo debe tener una longitud de 8 caracteres num�ricos.";
						Escribir "";				
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					Fin Si
				Hasta Que (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+')
				
				Escribir "";
				Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
				Escribir "";
				Escribir "    Categor�a(" opcionMenu "): Maestranza";
				Escribir "    DNI: " DNI;
				Escribir "";
				Escribir "    Ingrese el sueldo bruto del empleado para calcular su sueldo neto:";
				Leer sueldoMaestranza;
				
				Si (sueldoMaestranza > 0) Entonces
					// Calculamos descuentos de jubilacion, Obra Social adem�s del bono que debe recibir el repositor
					jubilacion = sueldoMaestranza * 0.11;
					obraSocial = sueldoMaestranza * 0.03;
					
					// Calculamos el sueldo neto del empleado de maestranza
					sueldoNeto = sueldoMaestranza - jubilacion - obraSocial;
					Repetir
						Escribir "";
						Escribir "    Sueldo bruto: " sueldoMaestranza;
						Escribir "";
						Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Maestranza es $" REDON(sueldoNeto*100)/100;
						Escribir "";
						Escribir "     �Desea ver m�s detalles sobre los descuentos jubilaci�n y Obra Social? presione S/N";
						Leer consulta;
						Si ((consulta = 'S') O (consulta = 's')) Entonces
							Limpiar Pantalla;
							Escribir "";
							Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
							Escribir "";
							Escribir "    Sueldo bruto: " sueldoMaestranza;
							Escribir "";
							Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Maestranza es $" REDON(sueldoNeto*100)/100;
							Escribir  "";
							Escribir "    La deducci�n correspondiente a la jubilaci�n es $" REDON(jubilacion*100)/100;
							Escribir "    La deducci�n correspondiente a la Obra Social es $" REDON(obraSocial*100)/100;
						SiNo
							Si ((consulta = 'N') O (consulta = 'n')) Entonces
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
								Escribir "";
								Escribir "    Sueldo bruto: " sueldoMaestranza;
								Escribir "";
								Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Maestranza es $" REDON(sueldoNeto*100)/100;
							SiNo
								Limpiar Pantalla;
								Escribir  "";
								Escribir "    :( Error de respuesta. Presione (S) si desea ver m�s detalles sobre los descuentos o presione (N) en caso contrario.";
								Escribir  "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
							Fin Si							
						Fin Si
					Hasta Que ((consulta = 'S') O (consulta = 's') O (consulta = 'N') O (consulta = 'n'))
					
				SiNo
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Debe introducir un valor mayor que cero para calcular el salario neto del empleado de la categoria Maestranza. El programa lo regresar� al men� principal para que vuelva a realizar la operaci�n en caso de haber introducido un valor incorrecto. Tambi�n podr� elegir una categor�a diferente de ser necesario o simplemente salir del programa.";
					opcionMenu = '';
					Escribir "";
					Escribir "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				Fin Si
			'2':
				Repetir
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
					Escribir "";
					Escribir "    Ha selecionado la categor�a(" opcionMenu ") Administraci�n";
					Escribir "";
					Escribir "    Ingrese el DNI del empleado:";
					Leer DNI;
					Si (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+') Entonces
						Escribir "";				
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						Escribir "";	
						Escribir "    :( Error. Ha introducido un DNI inv�lido. Por favor, introduzca un DNI nuevamente, el mismo debe tener una longitud de 8 caracteres num�ricos.";
						Escribir "";				
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					Fin Si
				Hasta Que (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+')
				
				Escribir "";
				Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
				Escribir "";
				Escribir "    Categor�a(" opcionMenu "): Administraci�n";
				Escribir "    DNI: " DNI;
				Escribir "";
				Escribir "    Ingrese el sueldo bruto del empleado para calcular su sueldo neto:";
				Leer sueldoAdministracion;
				
				Si (sueldoAdministracion > 0) Entonces
					// Calculamos descuentos de jubilacion, Obra Social del empleado de Administraci�n
					jubilacion = sueldoAdministracion * 0.11;
					obraSocial = sueldoAdministracion * 0.05;
					
					// Calculamos el sueldo neto del empleado de Administraci�n
					sueldoNeto = sueldoAdministracion - jubilacion - obraSocial;
					Repetir
						Escribir "";
						Escribir "    Sueldo bruto: " sueldoAdministracion;
						Escribir "";
						Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Administraci�n es $" REDON(sueldoNeto*100)/100;
						Escribir "";
						Escribir "     �Desea ver m�s detalles sobre los descuentos jubilaci�n y Obra Social? presione S/N";
						Leer consulta;
						Si ((consulta = 'S') O (consulta = 's')) Entonces
							Limpiar Pantalla;
							Escribir "";
							Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
							Escribir "";
							Escribir "    Sueldo bruto: " sueldoAdministracion;
							Escribir "";
							Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Administraci�n es $" REDON(sueldoNeto*100)/100;
							Escribir  "";
							Escribir "    La deducci�n correspondiente a la jubilaci�n es $" REDON(jubilacion*100)/100;
							Escribir "    La deducci�n correspondiente a la Obra Social es $" REDON(obraSocial*100)/100;
						SiNo
							Si ((consulta = 'N') O (consulta = 'n')) Entonces
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
								Escribir "";
								Escribir "    Sueldo bruto: " sueldoAdministracion;
								Escribir "";
								Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Administraci�n es $" REDON(sueldoNeto*100)/100;
							SiNo
								Limpiar Pantalla;
								Escribir  "";
								Escribir "    :( Error de respuesta. Presione (S) si desea ver m�s detalles sobre los descuentos o presione (N) en caso contrario.";
								Escribir  "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
							Fin Si							
						Fin Si
					Hasta Que ((consulta = 'S') O (consulta = 's') O (consulta = 'N') O (consulta = 'n'))
					
				SiNo
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Debe introducir un valor mayor que cero para calcular el salario neto del empleado de la categoria Administraci�n. El programa lo regresar� al men� principal para que vuelva a realizar la operaci�n en caso de haber introducido un valor incorrecto. Tambi�n podr� elegir una categor�a diferente de ser necesario o simplemente salir del programa.";
					opcionMenu = '';
					Escribir "";
					Escribir "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				Fin Si
			'3':
				Repetir
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
					Escribir "";
					Escribir "    Ha selecionado la categor�a(" opcionMenu ") Gerencia";
					Escribir "";
					Escribir "    Ingrese el DNI del empleado:";
					Leer DNI;
					Si (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+') Entonces
						Escribir "";				
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						Escribir "";	
						Escribir "    :( Error. Ha introducido un DNI inv�lido. Por favor, introduzca un DNI nuevamente, el mismo debe tener una longitud de 8 caracteres num�ricos.";
						Escribir "";				
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					Fin Si
				Hasta Que (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+')
				
				Escribir "";
				Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
				Escribir "";
				Escribir "    Categor�a(" opcionMenu "): Gerencia";
				Escribir "    DNI: " DNI;
				Escribir "";
				Escribir "    Ingrese el sueldo bruto del empleado para calcular su sueldo neto:";
				Leer sueldoGerencia;
				
				Si (sueldoGerencia > 0) Entonces
					// Calculamos descuentos de jubilacion, Obra Social del empleado de Gerencia
					jubilacion = sueldoGerencia * 0.11;
					obraSocial = sueldoGerencia * 0.05;
					descuentoClub = sueldoGerencia * 0.04;
					
					// Calculamos el sueldo neto del empleado de Gerencia
					sueldoNeto = sueldoGerencia - jubilacion - obraSocial - descuentoClub;
					Repetir
						Escribir "";
						Escribir "    Sueldo bruto: " sueldoGerencia;
						Escribir "";
						Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Gerencia es $" REDON(sueldoNeto*100)/100;
						Escribir "";
						Escribir "     �Desea ver m�s detalles sobre los descuentos jubilaci�n, Obra Social y club? presione S/N";
						Leer consulta;
						Si ((consulta = 'S') O (consulta = 's')) Entonces
							Limpiar Pantalla;
							Escribir "";
							Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
							Escribir "";
							Escribir "    Sueldo bruto: " sueldoGerencia;
							Escribir "";
							Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Gerencia es $" REDON(sueldoNeto*100)/100;
							Escribir  "";
							Escribir "    La deducci�n correspondiente a la jubilaci�n es $" REDON(jubilacion*100)/100;
							Escribir "    La deducci�n correspondiente a la Obra Social es $" REDON(obraSocial*100)/100;
							Escribir "    La deducci�n correspondiente al club es $" REDON(descuentoClub*100)/100;
						SiNo
							Si ((consulta = 'N') O (consulta = 'n')) Entonces
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
								Escribir "";
								Escribir "    Sueldo bruto: " sueldoGerencia;
								Escribir "";
								Escribir "    El sueldo neto del empleado con DNI: " DNI " de la categor�a Gerencia es $" REDON(sueldoNeto*100)/100;
							SiNo
								Limpiar Pantalla;
								Escribir  "";
								Escribir "    :( Error de respuesta. Presione (S) si desea ver m�s detalles sobre los descuentos o presione (N) en caso contrario.";
								Escribir  "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Este programa calcular� el sueldo de un determinado empleado en una empresa dentro de 3 categor�as: Maestranza, Administraci�n y Gerencia.";
							Fin Si							
						Fin Si
					Hasta Que ((consulta = 'S') O (consulta = 's') O (consulta = 'N') O (consulta = 'n'))
					
				SiNo
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Debe introducir un valor mayor que cero para calcular el salario neto del empleado de la categoria Gerencia. El programa lo regresar� al men� principal para que vuelva a realizar la operaci�n en caso de haber introducido un valor incorrecto. Tambi�n podr� elegir una categor�a diferente de ser necesario o simplemente salir del programa.";
					opcionMenu = '';
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
				Escribir "    :( Error. Usted ha introducido una opci�n de men� incorrecta. Por favor, reingrese una opci�n entre (1-4).";
				Esperar 5 Segundos; 
				Limpiar Pantalla;
		Fin Segun
	Hasta Que ((CONVERTIRANUMERO(opcionMenu) > 0) Y (CONVERTIRANUMERO(opcionMenu) < 5))
	
	Escribir "";
	Escribir "    Gracias por usar nuestro programa de calculo de salario  :)";
	Escribir "";

FinAlgoritmo
