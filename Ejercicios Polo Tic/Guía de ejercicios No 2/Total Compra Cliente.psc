Algoritmo TotalCompraCliente
	
	Definir opcionMenu, consulta como caracter;
	Definir cantidadPera, cantidadManzana, cantidadUva como Real;
	Definir precioPera, precioManzana, precioUva como entero;
	Definir totalPera, totalManzana, totalUva, totalGeneral, totalFinal como real;
	
	opcionMenu = '';
	consulta = '';
	cantidadPera = 0;
	cantidadManzana = 0;
	cantidadUva = 0;	
	precioPera = 0;
	precioManzana = 0;
	precioUva = 0;
	totalPera = 0;
	totalManzana = 0;
	totalUva = 0;
	totalGeneral = 0;
	totalFinal = 0;
	
	Repetir
		Escribir "";
		Escribir "    Este programa calcula el total a pagar por el cliente de una compra. El empleado Cajero debe ingresar por teclado la cantidad en (Kg) adquirida por producto y su precio por (Kg).";
		Escribir "";
		Escribir "    En la verdulería tenemos actualmente solamente tres productos en stock (Peras, Manzanas y Uvas)";
		Escribir "";
		Escribir "    Bienvenido a verdulería Fruta Fresca";	
		Escribir "";
		Escribir "    Elija una opción del menú entre (1-6) para realizar una operación:";
		Escribir "    1- Agregar Peras";
		Escribir "    2- Agregar Manzanas";
		Escribir "    3- Agregar Uvas";
		Escribir "    4- Total";
		Escribir "    5- Borrar Subtotales";
		Escribir "    6- Salir";
		Leer opcionMenu;
		opcionMenu = CONVERTIRATEXTO(TRUNC(CONVERTIRANUMERO(opcionMenu)));
		
		Segun opcionMenu Hacer
			'1':
				Limpiar Pantalla;
				Escribir "";
				Escribir "    Ha selecionado el producto(" opcionMenu ") Agregar Peras.";
				Escribir "";
				Escribir "    Ingrese la cantidad de Peras en (Kg):";
				Leer cantidadPera;
				Escribir "    Cantidad de Peras (Kg): " cantidadPera "Kg";
				Escribir "";
				Escribir "    Ingrese el precio de Peras por (Kg):";
				Leer precioPera;
				Escribir "    Precio de Peras (Kg): $" precioPera;
				Escribir "";
				
				//Realizamos el cálculo en pesos de la compra total del producto.
				Si (totalPera = 0 Y cantidadPera > 0 Y precioPera > 0) Entonces
					totalPera = (cantidadPera * precioPera);
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Cantidad de Peras (Kg): " cantidadPera "Kg";
					Escribir "    Precio de Peras (Kg): $" precioPera;
					Escribir "    Subtotal del producto Peras: $" totalPera;
					Repetir
						Escribir "";
						Escribir "     ¿Desea agregar más productos a la compra? presione S/N";
						Leer consulta;
						Si (consulta = 'S' O consulta = 's') Entonces
							opcionMenu = '';
							cantidadPera = 0;
							precioPera = 0;
							Limpiar Pantalla;
						SiNo
							Si (consulta = 'N' O consulta = 'n') Entonces
								opcionMenu = '';
								cantidadPera = 0;
								precioPera = 0;
								Escribir "";
								Escribir "    Ha decidido no agregar otro producto. Para calcular el total de la compra elija la opción (4) del menú principal.";
								Escribir "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
							SiNo
								Escribir "";
								Escribir "    :(  Error. No ha respondido correctamente a la consulta ¿Desea agregar más procutos a la compra? Si desea agregar un nuevo producto presione la tecla (s) y si no desea agregar un nuevo producto presione (n).";
								Escribir "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Cantidad de Peras (Kg): " cantidadPera "Kg";
								Escribir "    Precio de Peras (Kg): $" precioPera;
								Escribir "    Subtotal del producto Peras: $" totalPera;
							Fin Si
						Fin Si
					Hasta Que (consulta = 'S' O consulta = 's' O consulta = 'N' O consulta = 'n') 
					
				SiNo
					// Actualizamos el subtotal del producto cuando agregamos más Peras a la compra
					Si (totalPera > 0 Y cantidadPera > 0 Y precioPera > 0) Entonces
						totalPera = totalPera + (cantidadPera * precioPera);
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Hemos agregado más Peras a la compra por lo cual mostramos el subtotal actualizado de todas las Peras compradas.";
						Escribir "";
						Escribir "    Cantidad de Peras (Kg): " cantidadPera "Kg";
						Escribir "    Precio de Peras (Kg): $" precioPera;
						Escribir "    Nuevo Subtotal del producto Peras: $" totalPera;
						Repetir
							Escribir "";
							Escribir "     ¿Desea agregar más productos a la compra? presione S/N";
							Leer consulta;
							Si (consulta = 'S' O consulta = 's') Entonces
								opcionMenu = '';
								cantidadPera = 0;
								precioPera = 0;
								Limpiar Pantalla;
							SiNo
								Si (consulta = 'N' O consulta = 'n') Entonces
									opcionMenu = '';
									cantidadPera = 0;
									precioPera = 0;
									Escribir "";
									Escribir "    Ha decidido no agregar otro producto. Para calcular el total de la compra elija la opción (4) del menú principal.";
									Escribir "";
									Escribir "    Presione una tecla para continuar ...";
									Esperar Tecla;
									Limpiar Pantalla;
								SiNo
									Escribir "    :(  Error. No ha respondido correctamente a la consulta ¿Desea agregar más procutos a la compra? Si desea agregar un nuevo producto presione la tecla (s) y si no desea agregar un nuevo producto presione (n).";
									Escribir "";
									Escribir "    Presione una tecla para continuar ...";
									Esperar Tecla;
									Limpiar Pantalla;
									Escribir "";
									Escribir "    Hemos agregado más Peras a la compra por lo cual mostramos el subtotal actualizado de todas las Peras compradas.";
									Escribir "";
									Escribir "    Cantidad de Peras (Kg): " cantidadPera "Kg";
									Escribir "    Precio de Peras (Kg): $" precioPera;
									Escribir "    Subtotal del producto Peras: $" totalPera;
								Fin Si
							Fin Si
						Hasta Que (consulta = 'S' O consulta = 's' O consulta = 'N' O consulta = 'n') 
					SiNo
						Escribir "";
						Escribir "    Cantidad de Peras (Kg): " cantidadPera "Kg";
						Escribir "    Precio de Peras (Kg): $" precioPera;
						Escribir "";
						Escribir "    Ha introducido un valor erróneo en cantidad de Peras (Kg) o Precio de Peras (Kg). Le regresaremos al menú principal donde podrá escoger el producto nuevamente para ingresar los datos correctos. Por favor, para cantidad y precio del producto introduzca valores superiores a cero (0).";
						Escribir "";
						opcionMenu = '';
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					Fin Si					
				Fin Si				
			'2':
				Limpiar Pantalla;
				Escribir "";
				Escribir "    Ha selecionado el producto(" opcionMenu ") Agregar Manzanas.";
				Escribir "";
				Escribir "    Ingrese la cantidad de Manzanas en (Kg):";
				Leer cantidadManzana;
				Escribir "    Cantidad de Manzanas (Kg): " cantidadManzana "Kg";
				Escribir "";
				Escribir "    Ingrese el precio de Manzanas por (Kg):";
				Leer precioManzana;
				Escribir "    Precio de Manzanas (Kg): $" precioManzana;
				Escribir "";
				
				//Realizamos el cálculo en pesos de la compra total del producto.
				Si (totalManzana = 0 Y cantidadManzana > 0 Y precioManzana > 0) Entonces
					totalManzana = (cantidadManzana * precioManzana);
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Cantidad de Manzanas (Kg): " cantidadManzana "Kg";
					Escribir "    Precio de Manzanas (Kg): $" precioManzana;
					Escribir "    Subtotal del producto Manzanas: $" totalManzana;
					Repetir
						Escribir "";
						Escribir "     ¿Desea agregar más productos a la compra? presione S/N";
						Leer consulta;
						Si (consulta = 'S' O consulta = 's') Entonces
							opcionMenu = '';
							cantidadManzana = 0;
							precioManzana = 0;
							Limpiar Pantalla;
						SiNo
							Si (consulta = 'N' O consulta = 'n') Entonces
								opcionMenu = '';
								cantidadManzana = 0;
								precioManzana = 0;
								Escribir "";
								Escribir "    Ha decidido no agregar otro producto. Para calcular el total de la compra elija la opción (4) del menú principal.";
								Escribir "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
							SiNo
								Escribir "";
								Escribir "    :(  Error. No ha respondido correctamente a la consulta ¿Desea agregar más procutos a la compra? Si desea agregar un nuevo producto presione la tecla (s) y si no desea agregar un nuevo producto presione (n).";
								Escribir "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Cantidad de Manzanas (Kg): " cantidadManzana "Kg";
								Escribir "    Precio de Manzanas (Kg): $" precioManzana;
								Escribir "    Subtotal del producto Manzanas: $" totalManzana;
							Fin Si
						Fin Si
					Hasta Que (consulta = 'S' O consulta = 's' O consulta = 'N' O consulta = 'n') 
					
				SiNo
					// Actualizamos el subtotal del producto cuando agregamos más Manzanas a la compra
					Si (totalManzana > 0 Y cantidadManzana > 0 Y precioManzana > 0) Entonces
						totalManzana = totalManzana + (cantidadManzana * precioManzana);
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Hemos agregado más Manzanas a la compra por lo cual mostramos el subtotal actualizado de todas las Manzanas compradas.";
						Escribir "";
						Escribir "    Cantidad de Manzanas (Kg): " cantidadManzana "Kg";
						Escribir "    Precio de Manzanas (Kg): $" precioManzana;
						Escribir "    Nuevo Subtotal del producto Manzanas: $" totalManzana;
						Repetir
							Escribir "";
							Escribir "     ¿Desea agregar más productos a la compra? presione S/N";
							Leer consulta;
							Si (consulta = 'S' O consulta = 's') Entonces
								opcionMenu = '';
								cantidadManzana = 0;
								precioManzana = 0;
								Limpiar Pantalla;
							SiNo
								Si (consulta = 'N' O consulta = 'n') Entonces
									opcionMenu = '';
									cantidadManzana = 0;
									precioManzana = 0;
									Escribir "";
									Escribir "    Ha decidido NO agregar otro producto. Para calcular el total de la compra elija la opción (4) del menú principal.";
									Escribir "";
									Escribir "    Presione una tecla para continuar ...";
									Esperar Tecla;
									Limpiar Pantalla;
								SiNo
									Escribir "    :(  Error. No ha respondido correctamente a la consulta ¿Desea agregar más procutos a la compra? Si desea agregar un nuevo producto presione la tecla (s) y si no desea agregar un nuevo producto presione (n).";
									Escribir "";
									Escribir "    Presione una tecla para continuar ...";
									Esperar Tecla;
									Limpiar Pantalla;
									Escribir "";
									Escribir "    Hemos agregado más Manzanas a la compra por lo cual mostramos el subtotal actualizado de todas las Manzanas compradas.";
									Escribir "";
									Escribir "    Cantidad de Manzanas (Kg): " cantidadManzana "Kg";
									Escribir "    Precio de Manzanas (Kg): $" precioManzana;
									Escribir "    Subtotal del producto Manzanas: $" totalManzana;
								Fin Si
							Fin Si
						Hasta Que (consulta = 'S' O consulta = 's' O consulta = 'N' O consulta = 'n') 
					SiNo
						Escribir "";
						Escribir "    Cantidad de Manzanas (Kg): " cantidadManzana "Kg";
						Escribir "    Precio de Manzanas (Kg): $" precioManzana;
						Escribir "";
						Escribir "    Ha introducido un valor erróneo en cantidad de Manzanas (Kg) o Precio de Manzanas (Kg). Le regresaremos al menú principal donde podrá escoger el producto nuevamente para ingresar los datos correctos. Por favor, para cantidad y precio del producto introduzca valores superiores a cero (0).";
						Escribir "";
						opcionMenu = '';
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					Fin Si					
				Fin Si
			'3':
				Limpiar Pantalla;
				Escribir "";
				Escribir "    Ha selecionado el producto(" opcionMenu ") Agregar Uvas.";
				Escribir "";
				Escribir "    Ingrese la cantidad de Uvas en (Kg):";
				Leer cantidadUva;
				Escribir "    Cantidad de Uvas (Kg): " cantidadUva "Kg";
				Escribir "";
				Escribir "    Ingrese el precio de Uvas por (Kg):";
				Leer precioUva;
				Escribir "    Precio de Uvas (Kg): $" precioUva;
				Escribir "";
				
				//Realizamos el cálculo en pesos de la compra total del producto.
				Si (totalUva = 0 Y cantidadUva > 0 Y precioUva > 0) Entonces
					totalUva = (cantidadUva * precioUva);
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Cantidad de Uvas (Kg): " cantidadUva "Kg";
					Escribir "    Precio de Uvas (Kg): $" precioUva;
					Escribir "    Subtotal del producto Uvas: $" totalUva;
					Repetir
						Escribir "";
						Escribir "     ¿Desea agregar más productos a la compra? presione S/N";
						Leer consulta;
						Si (consulta = 'S' O consulta = 's') Entonces
							opcionMenu = '';
							cantidadUva = 0;
							precioUva = 0;
							Limpiar Pantalla;
						SiNo
							Si (consulta = 'N' O consulta = 'n') Entonces
								opcionMenu = '';
								cantidadUva = 0;
								precioUva = 0;
								Escribir "";
								Escribir "    Ha decidido no agregar otro producto. Para calcular el total de la compra elija la opción (4) del menú principal.";
								Escribir "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
							SiNo
								Escribir "";
								Escribir "    :(  Error. No ha respondido correctamente a la consulta ¿Desea agregar más procutos a la compra? Si desea agregar un nuevo producto presione la tecla (s) y si no desea agregar un nuevo producto presione (n).";
								Escribir "";
								Escribir "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Cantidad de Uvas (Kg): " cantidadUva "Kg";
								Escribir "    Precio de Uvas (Kg): $" precioUva;
								Escribir "    Subtotal del producto Uvas: $" totalUva;
							Fin Si
						Fin Si
					Hasta Que (consulta = 'S' O consulta = 's' O consulta = 'N' O consulta = 'n') 
					
				SiNo
					// Actualizamos el subtotal del producto cuando agregamos más Uvas a la compra
					Si (totalUva > 0 Y cantidadUva > 0 Y precioUva > 0) Entonces
						totalUva = totalUva + (cantidadUva * precioUva);
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Hemos agregado más Uvas a la compra por lo cual mostramos el subtotal actualizado de todas las Uvas compradas.";
						Escribir "";
						Escribir "    Cantidad de Uvas (Kg): " cantidadUva "Kg";
						Escribir "    Precio de Uvas (Kg): $" precioUva;
						Escribir "    Nuevo Subtotal del producto Uvas: $" totalUva;
						Repetir
							Escribir "";
							Escribir "     ¿Desea agregar más productos a la compra? presione S/N";
							Leer consulta;
							Si (consulta = 'S' O consulta = 's') Entonces
								opcionMenu = '';
								cantidadUva = 0;
								precioUva = 0;
								Limpiar Pantalla;
							SiNo
								Si (consulta = 'N' O consulta = 'n') Entonces
									opcionMenu = '';
									cantidadUva = 0;
									precioUva = 0;
									Escribir "";
									Escribir "    Ha decidido NO agregar otro producto. Para calcular el total de la compra elija la opción (4) del menú principal.";
									Escribir "";
									Escribir "    Presione una tecla para continuar ...";
									Esperar Tecla;
									Limpiar Pantalla;
								SiNo
									Escribir "    :(  Error. No ha respondido correctamente a la consulta ¿Desea agregar más procutos a la compra? Si desea agregar un nuevo producto presione la tecla (s) y si no desea agregar un nuevo producto presione (n).";
									Escribir "";
									Escribir "    Presione una tecla para continuar ...";
									Esperar Tecla;
									Limpiar Pantalla;
									Escribir "";
									Escribir "    Hemos agregado más Uvas a la compra por lo cual mostramos el subtotal actualizado de todas las Uvas compradas.";
									Escribir "";
									Escribir "    Cantidad de Uvas (Kg): " cantidadUva "Kg";
									Escribir "    Precio de Uvas (Kg): $" precioUva;
									Escribir "    Subtotal del producto Uvas: $" totalUva;
								Fin Si
							Fin Si
						Hasta Que (consulta = 'S' O consulta = 's' O consulta = 'N' O consulta = 'n') 
					SiNo
						Escribir "";
						Escribir "    Cantidad de Uvas (Kg): " cantidadUva "Kg";
						Escribir "    Precio de Uvas (Kg): $" precioUva;
						Escribir "";
						Escribir "    Ha introducido un valor erróneo en cantidad de Uvas (Kg) o Precio de Uvas (Kg). Le regresaremos al menú principal donde podrá escoger el producto nuevamente para ingresar los datos correctos. Por favor, para cantidad y precio del producto introduzca valores superiores a cero (0).";
						Escribir "";
						opcionMenu = '';
						Escribir "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
					Fin Si					
				Fin Si
			'4':
				Limpiar Pantalla;
				Escribir "";
				Si ((totalPera > 0) Y (totalManzana > 0) Y (totalUva > 0)) Entonces
					Escribir "    El total de la compra de Peras es $" totalPera;
					Escribir "    El total de la compra de Manzanas es $" totalManzana;
					Escribir "    El total de la compra de Uvas es $" totalUva;
				SiNo
					Si ((totalPera > 0) Y (totalManzana > 0) Y (totalUva = 0)) Entonces
						Escribir "    El total de la compra de Peras es $" totalPera;
						Escribir "    El total de la compra de Manzanas es $" totalManzana;
					SiNo
						Si ((totalPera = 0) Y (totalManzana > 0) Y (totalUva > 0)) Entonces
							Escribir "    El total de la compra de Manzanas es $" totalManzana;
							Escribir "    El total de la compra de Uvas es $" totalUva;
						SiNo
							Si ((totalPera > 0) Y (totalManzana = 0) Y (totalUva > 0)) Entonces
								Escribir "    El total de la compra de Peras es $" totalPera;
								Escribir "    El total de la compra de Uvas es $" totalUva;
							SiNo
								Si ((totalPera > 0) Y (totalManzana = 0) Y (totalUva = 0)) Entonces
									Escribir "    El total de la compra de Peras es $" totalPera;
								SiNo
									Si ((totalPera = 0) Y (totalManzana > 0) Y (totalUva = 0)) Entonces
										Escribir "    El total de la compra de Manzanas es $" totalManzana;
									SiNo
										Si ((totalPera = 0) Y (totalManzana = 0) Y (totalUva > 0)) Entonces
											Escribir "    El total de la compra de Uvas es $" totalUva;
										SiNo
											Escribir "    El cliente no ha realizado una compra.";
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
				
				Escribir "";
				totalGeneral = totalPera + totalManzana + totalUva;
				Si totalGeneral > 0 Entonces
					Escribir "    El total final de la compra del cliene es $" totalGeneral;
					Si totalGeneral > 100 Entonces
						Escribir "    Felicitaciones por haber realizado una compra superior a $100 tiene un 10% de descuento en su compra.";
						Escribir "";
						//totalFinal = totalGeneral - (totalGeneral *10)/100;
						totalFinal = totalGeneral * 0.9;
						Escribir "    El nuevo importe a pagar con descuento es $" totalFinal;
					Fin Si
					Escribir "";
					Escribir "    En verdulería Fruta Fresca valoramos a nuestros clientes.";
				Fin Si
			'5':
				Limpiar Pantalla;
				totalPera = 0;
				totalManzana = 0;
				totalUva = 0;
				totalGeneral = 0;
				Escribir "";
				Escribir "    Ha borrado todos los subtotales. Puede comenzar sus operaciones nuevamente o simplemente salir del programa.";
				opcionMenu = '';
				Escribir "";
				Escribir "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
			'6':
				Limpiar Pantalla;
				Si ((totalPera > 0) O (totalManzana > 0) o (totalUva > 0) O (totalGeneral > 0)) Entonces
					Escribir "";
					Escribir "    Existen operaciones pendientes para terminar las mismas debe seleccionar la opción (4) Total o la opción (5) Borrar Subtotales para salir sin realizar ninguna operación.";
					opcionMenu = '';
					Escribir "";
					Escribir "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Limpiar Pantalla;
					Escribir "";
					Escribir "    El cliente no ha realizado una compra.";
				Fin Si				
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "";
				Escribir "    :( Error. Ha introducido una opción de menú incorrecta. Por favor, introduzca una opción entre (1-6).";
				Esperar 5 Segundos;
				Limpiar Pantalla;
		Fin Segun
	Hasta Que (CONVERTIRANUMERO(opcionMenu) >= 1) Y (CONVERTIRANUMERO(opcionMenu) <= 6)
	
	Escribir "";
	Escribir "    Muchas gracias por su visita, vuelva pronto.";
	Escribir "";
	
FinAlgoritmo