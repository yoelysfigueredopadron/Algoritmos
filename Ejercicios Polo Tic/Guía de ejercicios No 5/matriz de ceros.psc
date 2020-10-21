Algoritmo matrizDeCeros
	
	Definir tabla, i, j Como Entero;
	Definir tablero Como Caracter;
	
	Dimension tabla[4,4];
	tablero = "";
	i = 0;
	j = 0;
	
	Escribir "";
	Escribir "   Este programa muestra una matriz de ceros.";
	Escribir "";
	
	Para i = 0 Hasta 3 Hacer
		Para j = 0 Hasta 3 Hacer
			tabla[i,j] = 0;
		Fin Para
	Fin Para
	
	Escribir " ";
	Escribir "     ||     ||     ||     ";
	Escribir "  ",tabla[0,0],"  ||  ",tabla[0,1],"  ||  ",tabla[0,2],"  ||  ",tabla[0,3];
	Escribir "     ||     ||     ||     ";
	Escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
	Escribir "     ||     ||     ||     ";
	Escribir "  ",tabla[1,0],"  ||  ",tabla[1,1],"  ||  ",tabla[1,2], "  ||  " , tabla[1,3];
	Escribir "     ||     ||     ||     ";
	Escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
	Escribir "     ||     ||     ||     ";
	Escribir "  ",tabla[2,0],"  ||  ",tabla[2,1],"  ||  ",tabla[2,2], "  ||  " , tabla[2,3];
	Escribir "     ||     ||     ||     ";
	Escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
	Escribir "     ||     ||     ||     ";
	Escribir "  ",tabla[3,0],"  ||  ",tabla[3,1],"  ||  ",tabla[3,2], "  ||  " , tabla[3,3];
	Escribir "     ||     ||     ||     ";
	Escribir " ";
	
FinAlgoritmo