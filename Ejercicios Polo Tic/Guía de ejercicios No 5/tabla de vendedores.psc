Algoritmo tablas_de_vendedores
	
	Definir cantidad, i, j, total, ventaMayor Como Entero;
	Definir productos, vendedores, tabla, elMejorVend Como Caracter;
	
	Dimension cantidad[50, 15];
	Dimension total[15];
	Dimension productos[50];
	Dimension vendedores[15];
	Dimension tabla[52];
	
	i = 0;
	j = 0;
	ventaMayor = 0;
	tabla[0] = "           |  ";
	elMejorVend = "";
	
	// Encabezados de columnas
	Para j = 0 Hasta 14 Hacer
		vendedores[j] = "Sell" + ConvertirATexto(j + 1);
		tabla[0] = tabla[0] + vendedores[j] + "  |  ";
	Fin Para
	
	// Encabezados de filas
	Para i = 0 Hasta 49 Hacer
		productos[i] = "Product" + ConvertirATexto(i + 1);
	Fin Para
	
	// asignar cero al arreglo cantidad
	Para i = 0 Hasta 49 Hacer
		Para j = 0 Hasta 14 Hacer
			cantidad[i, j] = 0;
		Fin Para
	Fin Para
	
	Para i = 1 Hasta 50 Hacer
		Para j = 0 Hasta 14 Hacer
			Si (i >= 1 Y i <= 9) Entonces
				tabla[i] = productos[i - 1] + "   |    ";
			SiNo
				tabla[i] = productos[i - 1] + "  |    ";
			Fin Si
		Fin Para
	Fin Para
	
	Para i = 1 Hasta 50 Hacer
		Para j = 0 Hasta 14 Hacer
			Si (j >= 0 Y j <= 8) Entonces
				tabla[i] = tabla[i] + ConvertirATexto(cantidad[i - 1, j]) + "    |    ";
			SiNo
				tabla[i] = tabla[i] + ConvertirATexto(cantidad[i - 1, j]) + "     |    ";
			Fin Si
		Fin Para
	Fin Para
	
	Escribir "Tabla de ventas";
	Escribir "";
	Para i = 0 Hasta 50 Hacer
		Escribir "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------";
		Escribir tabla[i];
	Fin Para
	Escribir "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------";
	Escribir "";
	
	Escribir "Presione una tecla para introducir las cantidades de productos que vendio cada vendedor ...";
	Esperar Tecla;
	Borrar Pantalla;
	
	// borrar tabla
	Para i = 0 Hasta 50 Hacer
		tabla[i] = "";
	Fin Para
	
	tabla[0] = "            |  ";
	Para j = 0 Hasta 14 Hacer
		vendedores[j] = "Seller" + ConvertirATexto(j + 1);
		tabla[0] = tabla[0] + vendedores[j] + "  |  ";
	Fin Para
	
	Escribir "";
	Para i = 0 Hasta 49 Hacer //hasta 49
		Para j = 0 Hasta 14 Hacer //hasta 14
			Escribir "Introduzca cantidad del producto" i + 1 " vendedor" j + 1 " : ";
			Leer cantidad[i, j];
		Fin Para
	Fin Para
	
	// calculamos total por vendedores
	Para j = 0 Hasta 14 Hacer //hasta 14
		total[j] = 0;
		Para i = 0 Hasta 49 Hacer //hasta 49
			total[j] = total[j] + cantidad[i, j];
		Fin Para
	Fin Para
	
	// buscamos el vendedor con más ventas
	ventaMayor = total[0];
	elMejorVend = vendedores[0];
	Para j = 1 Hasta 4 Hacer
		Si (ventaMayor < total[j]) Entonces
			ventaMayor = total[j];
			elMejorVend = vendedores[j];
		Fin Si
	Fin Para
	
	// Agregando fila de totales
	tabla[50] = "   Total    |  ";
	Para j = 0 Hasta 14 Hacer //14
		tabla[50] = tabla[50] + ConvertirATexto(total[j]) + "    |    ";
	Fin Para
	
	Para i = 1 Hasta 50 Hacer
		Para j = 0 Hasta 14 Hacer
			Si (i >= 1 Y i <= 9) Entonces
				tabla[i] = productos[i - 1] + "   |    ";
			SiNo
				tabla[i] = productos[i - 1] + "  |    ";
			Fin Si
		Fin Para
	Fin Para
	
	Para i = 1 Hasta 50 Hacer
		Para j = 0 Hasta 14 Hacer
			Si (j >= 0 Y j <= 8) Entonces
				tabla[i] = tabla[i] + ConvertirATexto(cantidad[i - 1, j]) + "    |    ";
			SiNo
				tabla[i] = tabla[i] + ConvertirATexto(cantidad[i - 1, j]) + "     |    ";
			Fin Si
		Fin Para
	Fin Para
	
	Limpiar Pantalla;
	Escribir "Tabla de ventas";
	Escribir "";
	Para i = 0 Hasta 50 Hacer // 50 + total
		Escribir "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------";
		Escribir tabla[i];
	Fin Para
	Escribir "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------";
	Escribir tabla[51];
	Escribir "";
	Escribir "La venta mayor es " ventaMayor " del vendedor " elMejorVend;
	Escribir "";
	
FinAlgoritmo