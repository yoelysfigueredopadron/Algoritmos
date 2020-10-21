Algoritmo MayorSueldoEmpleado
	
	Definir salario, mayorSalario Como Real;
	Definir indice, indiceSalariosEmpleados Como Entero;
	Definir arregloSalariosEmpleados Como Caracter;
	Dimension salario[10];
	Dimension arregloSalariosEmpleados[10];
	indice = 0;
	indiceSalariosEmpleados = 0;
	mayorSalario = 0;
	
	// Inicializamos el arreglo arregloSalariosEmpleados
	Para indiceSalariosEmpleados = 0 Hasta 9 Con Paso 1 Hacer
		arregloSalariosEmpleados[indiceSalariosEmpleados] = '';
	Fin Para
	
	Escribir "";
	Escribir "    Este programa ingresará el salario de 10 empleados y luego mostrará en pantalla cual es el mayor salirio ingresado.";
	Escribir "";	
	Para indice = 0 Hasta 9 Con Paso 1 Hacer
		Repetir
			Escribir "    Ingrese el sueldo del empleado N°" indice + 1 " : " Sin Saltar;
			Leer salario[indice];
			Si (salario[indice] <= 0) Entonces
				arregloSalariosEmpleados[indice] = '';
				Escribir "";
				Escribir "    :( Error. Debe introducir un valor númerico para salario mayor que cero (0). Por favor vuelva a introducir el salario del empleado.";
				Escribir "";
				Escribir  "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
				Escribir "";
				Escribir "    Este programa ingresará el salario de 10 empleados y luego mostrará en pantalla cual es el mayor salirio ingresado.";
				Escribir "";
				Para indiceSalariosEmpleados = 0 Hasta indice Con Paso 1 Hacer
					Si (arregloSalariosEmpleados[indiceSalariosEmpleados] <> '') Entonces
						Escribir arregloSalariosEmpleados[indiceSalariosEmpleados];
					Fin Si					
				Fin Para
				Escribir "";
			SiNo
				arregloSalariosEmpleados[indice] = "    Salario Empleado N°" + CONVERTIRATEXTO(indice + 1) + " : $" + CONVERTIRATEXTO(salario[indice]);
				Limpiar Pantalla;
				Escribir "";
				Escribir "    Este programa ingresará el salario de 10 empleados y luego mostrará en pantalla cual es el mayor salirio ingresado.";
				Escribir "";	
				Para indiceSalariosEmpleados = 0 Hasta indice Con Paso 1 Hacer
					Escribir arregloSalariosEmpleados[indiceSalariosEmpleados];
				Fin Para
				Escribir "";
			Fin Si			
		Hasta Que (salario[indice] > 0)
		Si (mayorSalario < salario[indice]) Entonces
			mayorSalario = salario[indice];
		Fin Si		
	Fin Para
	
	Escribir "";
	Escribir "    El mayor salario de todos los empleados es $" mayorSalario;
	Escribir "";
	
FinAlgoritmo