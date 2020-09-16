Algoritmo IVA
	
	Escribir '';
	Escribir 'Este programa calcula el IVA de un producto. El mismo representa el 21% sobre el precio del producto.';
	Escribir '';
	
	Definir ConstIVA, precioProducto, IVAProducto Como Real;
	precioProducto <- 0;
	ConstIVA <- .21; // 0.21 representa el 21 MOD  que es el valor del IVA actual
	IVAProducto <- 0;
	
	Escribir 'Introduzca el precio de un producto:';
	Leer precioProducto;
	
	// Calculamos el IVA del producto
	IVAProducto <- precioProducto*ConstIVA;
	
	Escribir '';
	Escribir 'El IVA del producto con un precio de $',REDON(precioProducto*100)/100,' es igual a $',REDON(IVAProducto*100)/100;
	Escribir '';
FinAlgoritmo
