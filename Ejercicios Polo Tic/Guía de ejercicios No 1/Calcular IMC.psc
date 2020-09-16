Algoritmo CalcularIMC
	Escribir '';
	Escribir 'Este programa es una calculadora del índice de masa corporal (IMC)';
	Escribir '';
	Escribir 'El sobrepeso puede causar la elevación de la concentración de colesterol total y de la presión arterial, y aumentar el riesgo de sufrir la enfermedad arterial coronaria. La obesidad aumenta las probabilidades de que se presenten otros factores de riesgo cardiovascular, en especial, presión arterial alta, colesterol elevado y diabetes.';
	Escribir '';
	Escribir 'Una medida de la obesidad se determina mediante el índice de masa corporal (IMC), que se calcula dividiendo los kilogramos de peso por el cuadrado de la estatura en metros:';
	Escribir '(IMC = peso [kg]/ estatura [m²])';
	Escribir '';
	Escribir 'Según el Instituto Nacional del Corazón, los Pulmones y la Sangre de los Estados Unidos (NHLBI), el sobrepeso se define como un IMC de más de 25. Se considera que una persona es obesa si su IMC es superior a 30. Usted puede determinar su IMC introduciendo los datos de su peso[kg] y su estarura en[cm]. Con la cifra del IMC puede averiguar su composición corporal en la tabla que aparece debajo del resultado.';
	Definir peso,estatura,IMC Como Real;
	IMC <- 0;
	peso <- 0;
	estatura <- 0;
	Escribir '';
	Escribir 'Introduzca el peso[kg]:';
	Leer peso;
	Escribir '';
	Escribir 'Introduzca la estatura[m]:';
	Leer estatura;
	Escribir '';
	// Calculamos el IMC
	IMC <- peso/(estatura^2);
	// REDON(IMC*10)/10 Usamamos el IMC lo multiplicamos por 10 y una vez redondeado lo dividimos por 10 de esta forma agregamos un lugar decimal al resultado mostrado en pantalla
	Escribir 'El índice de masa corporal(IMC) es ',REDON(IMC*10)/10;
	Escribir '';
	Escribir '';
	Escribir 'Tabla de composición corporal (ICM):';
	Escribir '------------------------------------------------------------';
	Escribir 'Composición corporal           Índice de masa corporal (IMC)';
	Escribir '------------------------------------------------------------';
	Escribir 'Peso inferior al normal        Menos de 18.5';
	Escribir '------------------------------------------------------------';
	Escribir 'Normal                         18.5 - 24.9';
	Escribir '------------------------------------------------------------';
	Escribir 'Peso superior al normal        25.0 - 29.9';
	Escribir '------------------------------------------------------------';
	Escribir 'Obesidad                       Más de 30.0';
	Escribir '------------------------------------------------------------';
	Escribir '';
FinAlgoritmo
