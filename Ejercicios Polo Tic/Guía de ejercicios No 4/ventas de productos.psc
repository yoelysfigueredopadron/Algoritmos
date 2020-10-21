Algoritmo Ventas_de_productos
	
	Definir productos, indiceProductos, indiceProductosIngresados, cantidadProductos, cantidadPorProducto Como Entero;
	Definir costoPorProducto, costoTotal Como Real;
	Definir productoIngresados Como Caracter;
	
	Dimension productos[1000000];
	Dimension cantidadPorProducto[1000000];
	Dimension costoPorProducto[1000000];
	Dimension costoTotal[1000000];
	Dimension productoIngresados[1000000];
	
	indiceProductos = 0;
	indiceProductosIngresados = 0;
	cantidadProductos = 0;
	
	Repetir
		Escribir "";
		Escribir "    Este programa cargará N cantidad cantidad de productos. Cada producto tendra una canditad y un costo que debemos ingresar a través de los cuales obtendremos el costo total para cada producto. Al finalizar el programa mostraremos un informe con aquellos productos que su costo total fue superior a $1000.";
		Escribir "";
		Escribir "    Ingrese cantidad de productos que desea para generar informe de ventas.";
		Leer cantidadProductos;
		Si (cantidadProductos > 0 Y cantidadProductos <= 1000000) Entonces
			Para indiceProductos = 0 Hasta cantidadProductos - 1 Hacer
				Repetir
					Escribir "";
					Escribir "    Ingrese cantidad del producto" indiceProductos + 1 " : " Sin Saltar;
					Leer cantidadPorProducto[indiceProductos];
					Si (cantidadPorProducto[indiceProductos] > 0) Entonces						
						productoIngresados[indiceProductos] = "    Producto" + CONVERTIRATEXTO(indiceProductos + 1) + "    --->    Cantidad : " +  CONVERTIRATEXTO(cantidadPorProducto[indiceProductos]) + "        Costo : ?        Total : ?";
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Este programa cargará N cantidad cantidad de productos. Cada producto tendra una canditad y un costo que debemos ingresar a través de los cuales obtendremos el costo total para cada producto. Al finalizar el programa mostraremos un informe con aquellos productos que su costo total fue superior a $1000.";
						Escribir "";
						Escribir "    Ingrese los datos de " cantidadProductos " producto(s):";
						Escribir "";
						Para indiceProductosIngresados = 0 Hasta indiceProductos Hacer
							Si (productoIngresados[indiceProductosIngresados] <> '') Entonces
								Escribir productoIngresados[indiceProductosIngresados];
							Fin Si
						Fin Para
						Escribir "";
						Repetir
							Escribir "    Ingrese costo del producto" indiceProductos + 1 " : " Sin Saltar;
							Leer costoPorProducto[indiceProductos];
							Si (costoPorProducto[indiceProductos] > 0) Entonces
								costoTotal[indiceProductos] = cantidadPorProducto[indiceProductos] * costoPorProducto[indiceProductos];
								productoIngresados[indiceProductos] = "    Producto" + CONVERTIRATEXTO(indiceProductos + 1) + "    --->    Cantidad : " +  CONVERTIRATEXTO(cantidadPorProducto[indiceProductos]) + "        Costo : $" + CONVERTIRATEXTO(costoPorProducto[indiceProductos]) + "        Total : $" + CONVERTIRATEXTO(costoTotal[indiceProductos]);
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Este programa cargará N cantidad cantidad de productos. Cada producto tendra una canditad y un costo que debemos ingresar a través de los cuales obtendremos el costo total para cada producto. Al finalizar el programa mostraremos un informe con aquellos productos que su costo total fue superior a $1000.";
								Escribir "";
								Escribir "    Ingrese los datos de " cantidadProductos " producto(s):";
								Escribir "";
								Para indiceProductosIngresados = 0 Hasta indiceProductos Hacer
									Si (productoIngresados[indiceProductosIngresados] <> '') Entonces
										Escribir productoIngresados[indiceProductosIngresados];
									Fin Si
								Fin Para
								Escribir "";
							SiNo
								Escribir "";
								Escribir "    :( Error. Costo para producto" indiceProductos + 1 " debe ser superior a cero (0). Por favor introduzca un valor correcto.";
								Escribir "";
								Escribir  "    Presione una tecla para continuar ...";
								Esperar Tecla;
								Limpiar Pantalla;
								Escribir "";
								Escribir "    Este programa cargará N cantidad cantidad de productos. Cada producto tendra una canditad y un costo que debemos ingresar a través de los cuales obtendremos el costo total para cada producto. Al finalizar el programa mostraremos un informe con aquellos productos que su costo total fue superior a $1000.";
								Escribir "";
								Escribir "    Ingrese los datos de " cantidadProductos " producto(s):";
								Escribir "";
								Para indiceProductosIngresados = 0 Hasta indiceProductos Hacer
									Si (productoIngresados[indiceProductosIngresados] <> '') Entonces
										Escribir productoIngresados[indiceProductosIngresados];
									Fin Si
								Fin Para
								Escribir "";
							Fin Si
						Hasta Que (costoPorProducto[indiceProductos] > 0)
					SiNo
						productoIngresados[indiceProductos] = '';
						Escribir "";
						Escribir "    :( Error. Cantidad para producto" indiceProductos + 1 " debe ser superior a cero (0). Por favor introduzca un valor correcto.";
						Escribir "";
						Escribir  "    Presione una tecla para continuar ...";
						Esperar Tecla;
						Limpiar Pantalla;
						Escribir "";
						Escribir "    Este programa cargará N cantidad cantidad de productos. Cada producto tendra una canditad y un costo que debemos ingresar a través de los cuales obtendremos el costo total para cada producto. Al finalizar el programa mostraremos un informe con aquellos productos que su costo total fue superior a $1000.";
						Escribir "";
						Escribir "    Ingrese los datos de " cantidadProductos " producto(s):";
						Escribir "";
						Para indiceProductosIngresados = 0 Hasta indiceProductos Hacer
							Si (productoIngresados[indiceProductosIngresados] <> '') Entonces
								Escribir productoIngresados[indiceProductosIngresados];
							Fin Si
						Fin Para
						Escribir "";
					Fin Si
				Hasta Que (cantidadPorProducto[indiceProductos] > 0)
			Fin Para
			Escribir "";
		SiNo
			Escribir "";
			Escribir "    :( Error. Ha introducido una cantidad de productos inválida. Por favor ingrese un valor entre (1-1000000). Si desea introducir más de 1000000 productos por favor comuniquece con Yoelys el desarrollador del programa para agregarle más características de acuerdo a sus necesidades. Gracias :)";
			Escribir "";
			Escribir  "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
		Fin Si
	Hasta Que (cantidadProductos > 0 Y cantidadProductos <= 1000000)
	
	Escribir "    Informe de ventas superiores a $1000";
	Escribir "------------------------------------------------------------------------------------------------------------------------------------";
	Para indiceProductos = 0 Hasta cantidadProductos - 1 Hacer
		Si (costoTotal[indiceProductos] > 1000) Entonces
			Escribir productoIngresados[indiceProductos];
		Fin Si
	Fin Para
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "    Muchas gracias por usar nuestro programa :)";
	Escribir "";
	
FinAlgoritmo