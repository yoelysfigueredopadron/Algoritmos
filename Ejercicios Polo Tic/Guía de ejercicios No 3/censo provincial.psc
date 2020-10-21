Funcion IngreseDNI(DNI por referencia) 
	Repetir
		Escribir  "";
		Escribir  "    Este programa realiza el censo en una provincia introduciendo la siguiente información de las personas: (DNI, edad y sexo). Al finalizar el programa mostrará un informe con la cantidad de personas censadas, cantidad de varones y cantidad de mujeres, porcentaje de varones cuya edad varía entre 16 y 65 años respecto al total de varones. Además de mostrar los datos de la persona con mayor edad censada. El programa terminará al ingresar cero (0) como DNI";
		Escribir  "";
		Escribir "    Ingrese DNI:";
		Leer DNI;
		Si (DNI = '0') O (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+') Entonces
			Escribir "";
		SiNo
			Escribir "";	
			Escribir "    :( Error. Ha introducido un DNI inválido. Por favor, introduzca un DNI nuevamente, el mismo debe tener una longitud de 8 caracteres numéricos. Introduzca cero (0) si desea salir del programa.";
			Escribir "";				
			Escribir "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
			Escribir  "";
			Escribir  "    Este programa realiza el censo en una provincia introduciendo la siguiente información de las personas: (DNI, edad y sexo). Al finalizar el programa mostrará un informe con la cantidad de personas censadas, cantidad de varones y cantidad de mujeres, porcentaje de varones cuya edad varía entre 16 y 65 años respecto al total de varones. Además de mostrar los datos de la persona con mayor edad censada. El programa terminará al ingresar cero (0) como DNI";
			Escribir  "";
		Fin Si
	Hasta Que (DNI = '0') O (LONGITUD(DNI) = 8) Y (CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,0,0)) <= 9) Y (SUBCADENA(DNI,0,0) <> '.') Y (SUBCADENA(DNI,0,0) <> '-') Y (SUBCADENA(DNI,0,0) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,1,1)) <= 9) Y (SUBCADENA(DNI,1,1) <> '.') Y (SUBCADENA(DNI,1,1) <> '-') Y (SUBCADENA(DNI,1,1) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,2,2)) <= 9) Y (SUBCADENA(DNI,2,2) <> '.') Y (SUBCADENA(DNI,2,2) <> '-') Y (SUBCADENA(DNI,2,2) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,3,3)) <= 9) Y (SUBCADENA(DNI,3,3) <> '.') Y (SUBCADENA(DNI,3,3) <> '-') Y (SUBCADENA(DNI,3,3) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,4,4)) <= 9) Y (SUBCADENA(DNI,4,4) <> '.') Y (SUBCADENA(DNI,4,4) <> '-') Y (SUBCADENA(DNI,4,4) <> '+')  Y (CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,5,5)) <= 9) Y (SUBCADENA(DNI,5,5) <> '.') Y (SUBCADENA(DNI,5,5) <> '-') Y (SUBCADENA(DNI,5,5) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,6,6)) <= 9) Y (SUBCADENA(DNI,6,6) <> '.') Y (SUBCADENA(DNI,6,6) <> '-') Y (SUBCADENA(DNI,6,6) <> '+') Y (CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) >= 0 Y CONVERTIRANUMERO(SUBCADENA(DNI,7,7)) <= 9) Y (SUBCADENA(DNI,7,7) <> '.') Y (SUBCADENA(DNI,7,7) <> '-') Y (SUBCADENA(DNI,7,7) <> '+')
FinFuncion

Funcion IngreseEdad (edad Por Referencia, DNI)
	Repetir
		Escribir "    Ingrese la edad de la persona con el DNI: " DNI;
		Leer edad;
		Si (edad > 0) Entonces
			Escribir "";
		SiNo
			Escribir "";
			Escribir "    :( Error. Ha introducido una edad inválida. Por favor introduzca una edad superior a cero (0)";
			Escribir "";
			Escribir "    Presione una tecla para continuar ...";
			Esperar Tecla;
			Limpiar Pantalla;
			Escribir  "";
			Escribir  "    Este programa realiza el censo en una provincia introduciendo la siguiente información de las personas: (DNI, edad y sexo). Al finalizar el programa mostrará un informe con la cantidad de personas censadas, cantidad de varones y cantidad de mujeres, porcentaje de varones cuya edad varía entre 16 y 65 años respecto al total de varones. Además de mostrar los datos de la persona con mayor edad censada. El programa terminará al ingresar cero (0) como DNI";
			Escribir  "";
			Escribir  "    DNI: " DNI;
			Escribir  "";
		Fin Si
	Hasta Que (edad > 0)	
FinFuncion

Funcion IngreseSexo (sexo Por Referencia, edad, DNI, totalVarones Por Referencia, totalVaronesMayores Por Referencia, totalMujeres Por Referencia)
	Repetir
		Escribir "    Ingrese el sexo (M/F) de la persona con el DNI: " DNI;
		Leer sexo;
		Si (sexo = "M" O sexo = "m") Entonces
			totalVarones = totalVarones + 1;
			Si (edad >= 16 Y edad <= 65) Entonces
				totalVaronesMayores = totalVaronesMayores + 1;
			Fin Si
		SiNo
			Si (sexo = "F" O sexo = "f") Entonces
				totalMujeres = totalMujeres + 1;
			SiNo
				Escribir "";
				Escribir "    :( Error. Ha introducido una información inválida para el sexo de la persona. Por favor introduzca una (M o F) como información correcta.";
				Escribir "";
				Escribir "    Presione una tecla para continuar ...";
				Esperar Tecla;
				Limpiar Pantalla;
				Escribir  "";
				Escribir  "    Este programa realiza el censo en una provincia introduciendo la siguiente información de las personas: (DNI, edad y sexo). Al finalizar el programa mostrará un informe con la cantidad de personas censadas, cantidad de varones y cantidad de mujeres, porcentaje de varones cuya edad varía entre 16 y 65 años respecto al total de varones. Además de mostrar los datos de la persona con mayor edad censada. El programa terminará al ingresar cero (0) como DNI";
				Escribir  "";
				Escribir  "    DNI: " DNI;
				Escribir  "    Edad: " edad;
				Escribir  "";
			Fin Si
		Fin Si
	Hasta Que (sexo = "M" O sexo = "m" O sexo = "F" O sexo = "f")
FinFuncion

Funcion PersonaMayorEdad (mayorEdad Por Referencia, edad, DNIMayorEdad Por Referencia, DNI, sexo, sexoMayorEdad Por Referencia)
	Si edad > mayorEdad Entonces
		mayorEdad = edad;
		DNIMayorEdad = DNI;
		Si (sexo = "M" O sexo = "m") Entonces
			sexoMayorEdad = "varon";
		SiNo
			sexoMayorEdad = "mujer";
		Fin Si			
	Fin Si
FinFuncion

Funcion RepitiendoProceso ()
	Escribir "";
	Escribir "    Vamos a introducir nuevos datos para censar otra persona. Si desea salir del programa ingrese cero (0) cuando se le solicite información del DNI.";
	Escribir "";
	Escribir "    Presione una tecla para continuar ...";
	Esperar Tecla;
	Limpiar Pantalla;	
FinFuncion

Funcion Informe(totalPersonas, sexoMayorEdad, mayorEdad, DNIMayorEdad, totalVarones, totalMujeres, porcentajeVarones)
	Si ((totalPersonas <> 0) Y (sexoMayorEdad <> '' Y mayorEdad <> 0 Y DNIMayorEdad <> '')) Entonces
		Escribir "";
		Escribir "    Informe del Censo:";
		Escribir "--------------------------------------------------------------------------------------------------------------------------";
		Escribir "    Cantidad de Personas Censadas:  " totalPersonas;
		Escribir "    Cantidad de Varones: " totalVarones;
		Escribir "    Cantidad de Mujeres: " totalMujeres;
		Escribir "    Cantidad de Varones entre 16 y 65 años: " REDON(porcentajeVarones*100)/100 "%";
		Escribir "";
		Escribir "    La persona con mayor edad registrada es " sexoMayorEdad " con una edad de " mayorEdad " años y con DNI: " DNIMayorEdad;
		Escribir "";
	SiNo
		Escribir "";
		Escribir "    Informe del Censo:";
		Escribir "--------------------------------------------------------------------------------------------------------------------------";
		Escribir "    Cantidad de Personas Censadas:  " totalPersonas;
		Escribir "    Cantidad de Varones: " totalVarones;
		Escribir "    Cantidad de Mujeres: " totalMujeres;
		Escribir "    Cantidad de Varones entre 16 y 65 años: " porcentajeVarones "%";
		Escribir "";
	Fin Si
	
FinFuncion

Algoritmo CensoProvincial
	
	Definir edad, totalPersonas, totalVarones, totalMujeres, totalVaronesMayores, mayorEdad Como Entero;
	Definir porcentajeVarones Como Real;
	Definir sexo, sexoMayorEdad, DNI, DNIMayorEdad Como Caracter;
	
	edad = 0;
	totalPersonas = 0;
	totalVarones = 0;
	totalMujeres = 0;
	totalVaronesMayores = 0;
	mayorEdad = 0;
	porcentajeVarones = 0;
	sexo = '';
	sexoMayorEdad = '';
	DNI = '';
	DNIMayorEdad = '';
	
	Repetir
		IngreseDNI(DNI);
		Si (DNI <> '0') Entonces
			IngreseEdad(edad, DNI);
			IngreseSexo(sexo, edad, DNI, totalVarones, totalVaronesMayores, totalMujeres);
			PersonaMayorEdad(mayorEdad, edad, DNIMayorEdad, DNI, sexo, sexoMayorEdad);
			totalPersonas = totalMujeres + totalVarones;
			RepitiendoProceso();
		Fin Si		
	Hasta Que DNI = '0';
	Si (totalVarones <> 0) Entonces
		porcentajeVarones = (totalVaronesMayores * 100) / totalVarones;
	Fin Si
	Informe(totalPersonas, sexoMayorEdad, mayorEdad, DNIMayorEdad, totalVarones, totalMujeres, porcentajeVarones);
	
FinAlgoritmo