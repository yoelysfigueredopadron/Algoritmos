Algoritmo InformeVentas
	
	Definir indiceVendedores, indiceVendedoresIngresados, contador Como Entero;
	Definir ventas, mayorVenta, menorVenta, dolaresAPesos Como Real;
	Definir vendedores, vendedorMayorVenta, vendedorMenorVenta, vendedoresIngresados Como Caracter;
	Dimension vendedores[15];
	Dimension ventas[15];
	Dimension vendedoresIngresados[15];
	
	indiceVendedores = 0;
	indiceVendedoresIngresados = 0;
	contador = 0;
	dolaresAPesos = 0;
	vendedorMayorVenta = '';
	vendedorMenorVenta = '';
	
	Repetir
		Escribir "";
		Escribir "    Este programa cargará información de 15 vendedores con sus respectivas ventas. Al finalizar mostrará un informe con el vendedor que realizó la mayor venta así como el que realizó la menor. Los importes de las ventas se mostrarán en dolares y a su derecha el mismo valor representado en pesos (Valor de cambio $140).";
		Escribir "";
		Escribir "    Ingrese el nombre de 15 vendedores y el importe de venta realizado por cada uno de ellos.";
		Escribir "";
		Para indiceVendedores = 0 Hasta 14 Hacer
			// Repetimos hasta que vendedores[indiceVendedores] le asignen un valor O sea un nombre para vendedor
			Repetir
				Escribir "    Ingrese el nombre para vendedor" indiceVendedores + 1 " : " Sin Saltar;
				Leer vendedores[indiceVendedores];
				Si (vendedores[indiceVendedores] <> '') Entonces
					vendedoresIngresados[indiceVendedores] = "    Vendedor" + CONVERTIRATEXTO(indiceVendedores + 1) + " : " + vendedores[indiceVendedores] + "        venta : ?";
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa cargará información de 15 vendedores con sus respectivas ventas. Al finalizar mostrará un informe con el vendedor que realizó la mayor venta así como el que realizó la menor. Los importes de las ventas se mostrarán en dolares y a su derecha el mismo valor representado en pesos (Valor de cambio $140).";
					Escribir "";
					Escribir "    Ingrese el nombre de 15 vendedores y el importe de venta realizado por cada uno de ellos.";
					Escribir "";
					Para indiceVendedoresIngresados = 0 Hasta indiceVendedores Hacer
						Si (vendedoresIngresados[indiceVendedoresIngresados] <> '') Entonces
							Escribir vendedoresIngresados[indiceVendedoresIngresados];
						Fin Si
					Fin Para
					Escribir "";
					// Repetimos hasta que ventas[indiceVendedores] le asignen un valor mayor que cero (0) o sea la venta del vendedor
					Repetir
						Escribir "    Ingrese importe de venta del vendedor" indiceVendedores + 1 " (" vendedores[indiceVendedores] ") : " Sin Saltar;
						Leer ventas[indiceVendedores];
						Si (ventas[indiceVendedores] > 0) Entonces
							vendedoresIngresados[indiceVendedores] = "    Vendedor" + CONVERTIRATEXTO(indiceVendedores + 1) + " : " + vendedores[indiceVendedores] + "        venta en dolares: $" + CONVERTIRATEXTO(ventas[indiceVendedores]);
							Limpiar Pantalla;
							Escribir "";
							Escribir "    Este programa cargará información de 15 vendedores con sus respectivas ventas. Al finalizar mostrará un informe con el vendedor que realizó la mayor venta así como el que realizó la menor. Los importes de las ventas se mostrarán en dolares y a su derecha el mismo valor representado en pesos (Valor de cambio $140).";
							Escribir "";
							Escribir "    Ingrese el nombre de 15 vendedores y el importe de venta realizado por cada uno de ellos.";
							Escribir "";
							Para indiceVendedoresIngresados = 0 Hasta indiceVendedores Hacer
								Si (vendedoresIngresados[indiceVendedoresIngresados] <> '') Entonces
									Escribir vendedoresIngresados[indiceVendedoresIngresados];
								Fin Si
							Fin Para
							Escribir "";
						SiNo
							Escribir "";
							Escribir "    :( Error. Ha introducido un valor inválido en la venta. Por favor introduzca un valor mayor que cero (0) en la venta del vendedor" indiceVendedores + 1 " (" vendedores[indiceVendedores] ").";
							Escribir "";
							Escribir  "    Presione una tecla para continuar ...";
							Esperar Tecla;
							Limpiar Pantalla;
							Escribir "";
							Escribir "    Este programa cargará información de 15 vendedores con sus respectivas ventas. Al finalizar mostrará un informe con el vendedor que realizó la mayor venta así como el que realizó la menor. Los importes de las ventas se mostrarán en dolares y a su derecha el mismo valor representado en pesos (Valor de cambio $140).";
							Escribir "";
							Escribir "    Ingrese el nombre de 15 vendedores y el importe de venta realizado por cada uno de ellos.";
							Escribir "";
							Para indiceVendedoresIngresados = 0 Hasta indiceVendedores Hacer
								Si (vendedoresIngresados[indiceVendedoresIngresados] <> '') Entonces
									Escribir vendedoresIngresados[indiceVendedoresIngresados];
								Fin Si
							Fin Para
							Escribir "";
						Fin Si
					Hasta Que (ventas[indiceVendedores] > 0)
				SiNo
					vendedoresIngresados[indiceVendedores] = '';
					Escribir "";
					Escribir "    :( Error. No puede dejar este campo en blanco. Por favor introduzca un nombre para el vendedor" indiceVendedores + 1;
					Escribir "";
					Escribir  "    Presione una tecla para continuar ...";
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "";
					Escribir "    Este programa cargará información de 15 vendedores con sus respectivas ventas. Al finalizar mostrará un informe con el vendedor que realizó la mayor venta así como el que realizó la menor. Los importes de las ventas se mostrarán en dolares y a su derecha el mismo valor representado en pesos (Valor de cambio $140).";
					Escribir "";
					Escribir "    Ingrese el nombre de 15 vendedores y el importe de venta realizado por cada uno de ellos.";
					Escribir "";
					Para indiceVendedoresIngresados = 0 Hasta indiceVendedores Hacer
						Si (vendedoresIngresados[indiceVendedoresIngresados] <> '') Entonces
							Escribir vendedoresIngresados[indiceVendedoresIngresados];
						Fin Si
					Fin Para
					Escribir "";
				Fin Si
			Hasta Que (vendedores[indiceVendedores] <> '')
			contador = contador + 1;
		Fin Para
	Hasta Que (contador = 15)
	
	// Buscamos la mayor y menor venta
	mayorVenta = ventas[0];
	vendedorMayorVenta = vendedoresIngresados[0];
	menorVenta = ventas[0];
	vendedorMenorVenta = vendedoresIngresados[0];
	Para indiceVendedores = 1 Hasta 14 Hacer
		Si (mayorVenta < ventas[indiceVendedores]) Entonces
			mayorVenta = ventas[indiceVendedores];
			vendedorMayorVenta = vendedoresIngresados[indiceVendedores];
		Fin Si
		Si (menorVenta > ventas[indiceVendedores]) Entonces
			menorVenta = ventas[indiceVendedores];
			vendedorMenorVenta = vendedoresIngresados[indiceVendedores];
		Fin Si
	Fin Para
	
	Escribir "    Informe de ventas:";
	Escribir "------------------------------------------------------------------------------------------------------------------------------------";
	Escribir "    MayorVenta en dolares: $" mayorVenta;
	Escribir "    Vendedor con mayor ventas ->" vendedorMayorVenta "        conversión de dolares a pesos: $" mayorVenta * 140;
	Escribir "";
	Escribir "    MenorVenta en dolares: $" menorVenta;
	Escribir "    Vendedor con menor ventas ->" vendedorMenorVenta "        conversión de dolares a pesos: $" menorVenta * 140;
	Escribir "";
	
FinAlgoritmo