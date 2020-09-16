Algoritmo VentasMerceriaMayorista
	
	Definir canutillos, mostacillas, cantidadProducto Como Real;
	Definir opcionProducto Como Caracter;
	
	canutillos = 0;
	mostacillas = 0;
	cantidadProducto = 0;
	opcionProducto = "";
	
	Repetir
		Escribir "";
		Escribir "    Este programa vende canutillos y mostacillas al por mayor en una mercería mayorista mediante su página web. Los pedidos no pueden ser inferiores a 5 productos. Si el pedido se encuentra entre 5 y 15 productos tendrá un costo de envió de $200 pero si el mismo tiene más de 15 productos el envió es gratuito.";
		Escribir "";		
		Escribir "    Bienvenido a Mercería Mayorista Yoelys association";
		Escribir "";
		Escribir "    Introduzca un número para elergir la opción del producto que desea comprar:(1-4)";
		Escribir "    1- canutillos";
		Escribir "    2- mostacillas";
		Escribir "    3- canutillos y mostacillas";
		Escribir "    4- salir";
		Leer opcionProducto;
		opcionProducto = CONVERTIRATEXTO(TRUNC(CONVERTIRANUMERO(opcionProducto)));
		
		Segun opcionProducto Hacer
			'1':
				Escribir "";
				Escribir "    Ha elegido la opción(" opcionProducto ") producto canutillo.";
				Escribir "";
				Escribir "    Indique la cantidad de canutillos que desea comprar:";
				Leer canutillos;
				// En caso que el usuario introduzca un número decimal solo utilizamos la parte entera para el producto pedido
				canutillos = TRUNC(canutillos);
				Si (canutillos < 5) Entonces
					Escribir "";
					Escribir "    Ha realizado un pedido de " canutillos " canutillo(s) pero el pedido mínimo es de 5 productos.";
					Escribir "    Por favor, vuelva a realizar su pedido.";
					opcionProducto = '0';
					Escribir "";
					Escribir  "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Si (canutillos >= 5 Y canutillos <= 15) Entonces
						Escribir "";
						Escribir "    Ha realizado un pedido de " canutillos " canutillos, el envío cuesta $200.";
						Escribir "    Muchas gracias por elegirnos.";
					SiNo
						Escribir "";
						Escribir "    Ha realizado un pedido de " canutillos " canutillos, el envío es gratuito.";
						Escribir "    Muchas gracias por elegirnos.";
					Fin Si
				Fin Si
			'2':
				Escribir "";
				Escribir "    Ha elegido la opción(" opcionProducto ") producto mostacilla.";
				Escribir "";
				Escribir "    Indique la cantidad de mostacillas que desea comprar:";
				Leer mostacillas;
				// En caso que el usuario introduzca un número decimal solo utilizamos la parte entera para el producto pedido
				mostacillas = TRUNC(mostacillas);
				Si (mostacillas < 5) Entonces
					Escribir "";
					Escribir "    Ha realizado un pedido de " mostacillas " mostacilla(s) pero el pedido mínimo es de 5 productos.";
					Escribir "    Por favor, vuelva a realizar su pedido.";
					opcionProducto = '0';
					Escribir "";
					Escribir  "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Si (mostacillas >= 5 Y mostacillas <= 15) Entonces
						Escribir "";
						Escribir "    Ha realizado un pedido de " mostacillas " mostacillas, el envío cuesta $200.";
						Escribir "    Muchas gracias por elegirnos.";
					SiNo
						Escribir "";
						Escribir "    Ha realizado un pedido de " mostacillas " mostacillas, el envío es gratuito.";
						Escribir "    Muchas gracias por elegirnos.";
					Fin Si
				Fin Si
			'3':
				Escribir "";
				Escribir "    Ha elegido la opción(" opcionProducto ") productos canutillos y mostacillas.";
				Escribir "";
				Escribir "    Indique la cantidad de canutillos que desea comprar:";
				Leer canutillos;
				canutillos = TRUNC(canutillos);
				Escribir "";
				Escribir "    Indique la cantidad de mostacillas que desea comprar:";
				Leer mostacillas;
				mostacillas = TRUNC(mostacillas);
				
				// Calculamos la cantidad de productos pedidos
				cantidadProducto = canutillos + mostacillas;
				Si (cantidadProducto < 5) Entonces
					Escribir "";
					Escribir "    Ha realizado un pedido de " canutillos " canutillo(s) y " mostacillas " mostacilla(s) para un total de " cantidadProducto " producto(s) pero el pedido mínimo es de 5 productos.";
					Escribir "    Por favor, vuelva a realizar su pedido.";
					opcionProducto = '0';
					Escribir "";
					Escribir  "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Si (cantidadProducto >= 5 Y (cantidadProducto <= 15)) Entonces
						Escribir "";
						Escribir "    Ha realizado un pedido de " canutillos " canutillos y " mostacillas " mostacillas para un total de " cantidadProducto " productos, el envío cuesta $200.";
						Escribir "    Muchas gracias por elegirnos.";
					SiNo
						Escribir "";
						Escribir "    Ha realizado un pedido de " canutillos " canutillos y " mostacillas " mostacillas para un total de " cantidadProducto " productos, el envío es gratuito.";
						Escribir "    Muchas gracias por elegirnos.";
					Fin Si
				Fin Si
			'4':
				Escribir "";
				Escribir "    Ha seleccionado salir. Muchas gracias por su visita.";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "";
				Escribir  "    No ha elegido una opción válida del menú. Por favor, seleccione una opción correcta entre:(1-4)";
				Esperar 5 Segundos;
				Limpiar Pantalla;
	Fin Segun
	Hasta Que (CONVERTIRANUMERO(opcionProducto) > 0 Y CONVERTIRANUMERO(opcionProducto) < 5);
	
	Escribir "";
	Escribir "    Vuelva a visitarnos pronto.  :)";		
	Escribir "";
	
FinAlgoritmo