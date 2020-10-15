Algoritmo FacturarInternet
	Definir menuPrincipal, DNI, confirmarDNI, menuServicio, confirmarMasFacturas Como Caracter;
	Definir cantidadClientes Como Entero;
	Definir total Como Real;
	menuPrincipal = '';
	DNI = '';
	confirmarDNI = '';
	menuServicio = '';
	confirmarMasFacturas = '';
	cantidadClientes = 0;
	total = 0;
	Repetir
		Escribir "";
		Escribir "    Este programa calcula el monto a pagar de la factura de consumo de internet de la prestación del servicio de una empresa.";
		Escribir "";
		Escribir "    Elija una opción del menú entre (1-2) para realizar una operación:";
		Escribir "    1- Calcular factura de pago";
		Escribir "    2- Salir";
		Leer menuPrincipal;
		menuPrincipal = CONVERTIRATEXTO(TRUNC(CONVERTIRANUMERO(menuPrincipal)));
		
		Segun menuPrincipal Hacer
			'1':
				Repetir
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa calcula el monto a pagar de la factura de consumo de internet de la prestación del servicio de una empresa.";
					Escribir "";
					Escribir "    Ingrese el DNI del cliente:";
					Leer DNI;
					Si (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+') Entonces
						Escribir "";	
						Repetir
							Escribir "    ¿Confirma que el DNI introducido es correcto? (s/n)";
							Leer confirmarDNI;
							Si (confirmarDNI = 'S' O confirmarDNI = 's') Entonces
								Limpiar Pantalla;
								Escribir  "";
								Escribir "    Este programa calcula el monto a pagar de la factura de consumo de internet de la prestación del servicio de una empresa.";
								Escribir  "";
								Escribir  "    DNI: " DNI;
								Escribir  "";
							SiNo
								Si ((confirmarDNI = 'N') O (confirmarDNI = 'n')) Entonces
									Limpiar Pantalla;
									Escribir "";
									Escribir "    Ha introducido un DNI incorrecto. Debe volver a introducir el DNI.";
									Escribir "";
									Escribir "    Presione una tecla para continuar ...";
									Esperar Tecla;
									Limpiar Pantalla;
								SiNo
									Limpiar Pantalla;
									Escribir  "";
									Escribir "    :( Error de respuesta. Presione (S) si ha introducido el DNI correcto o presione (N) en caso contrario.";
									Escribir  "";
									Escribir "    Presione una tecla para continuar ...";
									Esperar Tecla;
									Limpiar Pantalla;
									Escribir  "";
									Escribir "    Este programa calcula el monto a pagar de la factura de consumo de internet de la prestación del servicio de una empresa.";
									Escribir  "";
									Escribir  "    DNI: " DNI;
									Escribir  "";
								Fin Si
							Fin Si
						Hasta Que (confirmarDNI = 'S' O confirmarDNI = 's' O confirmarDNI = 'N' O confirmarDNI = 'n')
					SiNo
						Escribir "";	
						Escribir "    :( Error. Ha introducido un DNI inválido. Por favor, introduzca un DNI nuevamente, el mismo debe tener una longitud de 8 caracteres numéricos.";
						Escribir "";				
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					Fin Si
				Hasta Que (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+') Y (confirmarDNI = 'S' O confirmarDNI = 's')
				
				Repetir
					Escribir "";
					Escribir "    Elija una opción del menú entre (1-3) para el tipo de servicio del cliente o (4) para salir:";
					Escribir "";
					Escribir "    1- Internet 30 megas";
					Escribir "    2- Internet 50 megas";
					Escribir "    3- Internet 100 megas";
					Escribir "    4- Salir";
					Leer menuServicio;
					menuServicio = CONVERTIRATEXTO(TRUNC(CONVERTIRANUMERO(menuServicio)));
					
					Segun menuServicio Hacer
						'1':
							cantidadClientes = cantidadClientes + 1;
							total = 750;
							Escribir "";
							Escribir "    Cliente N°" cantidadClientes;
							Escribir "-----------------------------------------------------------";
							Escribir "    DNI: " DNI;
							Escribir "    Tipo de servicio (" menuServicio ") Internet 30 megas.";
							Escribir "    Total: $" total;
							
							Repetir
								Escribir "";
								Escribir "    ¿Desea calcular la factura de otro cliente? (s/n)";
								Leer confirmarMasFacturas;
								Si (confirmarMasFacturas = 'S' O confirmarMasFacturas = 's') Entonces
									menuPrincipal = '';
									total = 0;
									Limpiar Pantalla;
								SiNo
									Si ((confirmarMasFacturas = 'N') O (confirmarMasFacturas = 'n')) Entonces
										Limpiar Pantalla;
										Escribir "";
										Escribir "    Ha terminado de calcular la facturación del servicio de Internet para los clientes de la empresa.";
									SiNo
										Limpiar Pantalla;
										Escribir  "";
										Escribir "    :( Error de respuesta. Presione (S) si desea calcular la factura de otro cliente o presione (N) en caso contrario.";
										Escribir  "";
										Escribir "    Presione una tecla para continuar ...";
										Esperar Tecla;
										Limpiar Pantalla;
										Escribir  "";
										Escribir "    Este programa calcula el monto a pagar de la factura de consumo de internet de la prestación del servicio de una empresa.";
										Escribir  "";
										Escribir "    Cliente N°" cantidadClientes;
										Escribir "-----------------------------------------------------------";
										Escribir "    DNI: " DNI;
										Escribir "    Tipo de servicio(" menuServicio ") Internet 30 megas.";
										Escribir "    Total: $" total;
										Escribir  "";
									Fin Si
								Fin Si
							Hasta Que (confirmarMasFacturas = 'S' O confirmarMasFacturas = 's' O confirmarMasFacturas = 'N' O confirmarMasFacturas = 'n')
						'2':
							cantidadClientes = cantidadClientes + 1;
							total = 1100;
							Escribir "";
							Escribir "    Cliente N°" cantidadClientes;
							Escribir "-----------------------------------------------------------";
							Escribir "    DNI: " DNI;
							Escribir "    Tipo de servicio (" menuServicio ") Internet 50 megas.";
							Escribir "    Total: $" total;
							
							Repetir
								Escribir "";
								Escribir "    ¿Desea calcular la factura de otro cliente? (s/n)";
								Leer confirmarMasFacturas;
								Si (confirmarMasFacturas = 'S' O confirmarMasFacturas = 's') Entonces
									menuPrincipal = '';
									total = 0;
									Limpiar Pantalla;
								SiNo
									Si ((confirmarMasFacturas = 'N') O (confirmarMasFacturas = 'n')) Entonces
										Limpiar Pantalla;
										Escribir "";
										Escribir "    Ha terminado de calcular la facturación del servicio de Internet para los clientes de la empresa.";
									SiNo
										Limpiar Pantalla;
										Escribir  "";
										Escribir "    :( Error de respuesta. Presione (S) si desea calcular la factura de otro cliente o presione (N) en caso contrario.";
										Escribir  "";
										Escribir "    Presione una tecla para continuar ...";
										Esperar Tecla;
										Limpiar Pantalla;
										Escribir  "";
										Escribir "    Este programa calcula el monto a pagar de la factura de consumo de internet de la prestación del servicio de una empresa.";
										Escribir  "";
										Escribir "    Cliente N°" cantidadClientes;
										Escribir "-----------------------------------------------------------";
										Escribir "    DNI: " DNI;
										Escribir "    Tipo de servicio(" menuServicio ") Internet 50 megas.";
										Escribir "    Total: $" total;
										Escribir  "";
									Fin Si
								Fin Si
							Hasta Que (confirmarMasFacturas = 'S' O confirmarMasFacturas = 's' O confirmarMasFacturas = 'N' O confirmarMasFacturas = 'n')
						'3':
							cantidadClientes = cantidadClientes + 1;
							// Calculamos un 5% de descuento sobre $1500 por haber comprado el plan de 100 megas
							total = 1500 * 0.95;
							Escribir "";
							Escribir "    Cliente N°" cantidadClientes;
							Escribir "-------------------------------------------------------------------------------------------------------";
							Escribir "    DNI: " DNI;
							Escribir "    Tipo de servicio (" menuServicio ") Internet 100 megas. Tiene un descuento promocional de un 5%.";
							Escribir "    Total: $" total;
							
							Repetir
								Escribir "";
								Escribir "    ¿Desea calcular la factura de otro cliente? (s/n)";
								Leer confirmarMasFacturas;
								Si (confirmarMasFacturas = 'S' O confirmarMasFacturas = 's') Entonces
									menuPrincipal = '';
									total = 0;
									Limpiar Pantalla;
								SiNo
									Si ((confirmarMasFacturas = 'N') O (confirmarMasFacturas = 'n')) Entonces
										Limpiar Pantalla;
										Escribir "";
										Escribir "    Ha terminado de calcular la facturación del servicio de Internet para los clientes de la empresa.";
									SiNo
										Limpiar Pantalla;
										Escribir  "";
										Escribir "    :( Error de respuesta. Presione (S) si desea calcular la factura de otro cliente o presione (N) en caso contrario.";
										Escribir  "";
										Escribir "    Presione una tecla para continuar ...";
										Esperar Tecla;
										Limpiar Pantalla;
										Escribir  "";
										Escribir "    Este programa calcula el monto a pagar de la factura de consumo de internet de la prestación del servicio de una empresa.";
										Escribir  "";
										Escribir "    Cliente N°" cantidadClientes;
										Escribir "-------------------------------------------------------------------------------------------------------";
										Escribir "    DNI: " DNI;
										Escribir "    Tipo de servicio(" menuServicio ") Internet 100 megas. Tiene un descuento promocional de un 5%.";
										Escribir "    Total: $" total;
										Escribir  "";
									Fin Si
								Fin Si
							Hasta Que (confirmarMasFacturas = 'S' O confirmarMasFacturas = 's' O confirmarMasFacturas = 'N' O confirmarMasFacturas = 'n')
						'4':
							Limpiar Pantalla;
							Escribir "";
							Escribir "    Ha selecionado la opción (4) salir.";
							Escribir "";
							Esperar 3 Segundos;
							Limpiar Pantalla;
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "";
							Escribir "    :( Error. Ha introducido una opción de menú incorrecta. Por favor, introduzca una opción entre (1-4).";
							Esperar 5 Segundos;
							Limpiar Pantalla;
					Fin Segun
				Hasta Que (CONVERTIRANUMERO(menuServicio) >= 1) Y (CONVERTIRANUMERO(menuServicio) <= 4)
				
			'2':
				Limpiar Pantalla;
				Escribir "";
				Escribir "    Ha selecionado la opción (2) salir.";
				Escribir "";
				Esperar 3 Segundos;
				Limpiar Pantalla;
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "";
				Escribir "    :( Error. Ha introducido una opción de menú incorrecta. Por favor, introduzca una opción entre (1-2).";
				Esperar 5 Segundos;
				Limpiar Pantalla;
		Fin Segun
	Hasta Que (CONVERTIRANUMERO(menuPrincipal) >= 1) Y (CONVERTIRANUMERO(menuPrincipal) <= 2)
	Escribir "";
	Escribir "    Gracias por usar nuestro programa. :)";
	Escribir "";
FinAlgoritmo
