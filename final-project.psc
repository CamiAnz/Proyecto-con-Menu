SubProceso Perder (jugador Por Referencia)
	Escribir "                        ,___,";
	Escribir "                        [O.o] ";
	Escribir "                        /)__) ";
	Escribir "                        -.--.-";
	escribir "    *:._.:*~*:._.:* Veo que has perdido *:._.:*~*:._.:*";
	escribir " *:._.:*~*: No puedes pasar, no eres Bienvenido aqui :*~*:._.:*";
	escribir "     *~*:._.:*~*:._.:*~*:. _ .:*~*:._.:*~*:._.:*~*:._.:*~*";	
FinSubProceso

SubProceso Ganar (jugador Por Referencia)
	Escribir "Has superado mi desafío. Te concedo el acceso al bosque.";
FinSubProceso

SubProceso jugar (juego Por Referencia)
	definir i,n,jugador, jugadas Como Entero;
	definir vector como caracter;
	Dimension vector[10];
	
	Escribir ".*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨* .¸¸.*¨*.¸¸.*¨*";
	Escribir "                        ,___,        *       ";
	Escribir "         Hola,          [O.o]       /|\      ";
	Escribir "         bienvenido a   /)__)      /_|_\     ";
	Escribir "         mi bosque      -.--.-      | |      ";
	Escribir " ";
	Escribir ".*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨* ";
	Escribir " "; 
	Escribir "SI QUIERES PASAR, DEBERAS GANARME EN UNA PARTIDA DE TA TE TI";
	Escribir " "; 
	Escribir ".*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨* ";
	
	para i <- 0 hasta 9 con paso 1 Hacer //RECORREMOS EL ARRAY COMPLETANDOLO CON ESPACIOS EN BLANCO
		vector(i) <- " ";
	FinPara
	
	jugador <- azar(2) + 1; //DESIGNA DE MANERA ALEATORIA CUAL VA A SER EL PRIMER JUGADOR EN JUGAR, SE COLOCA UN 1 PARA QUE EL MISMO NO SEA 0
	jugadas <- 1;
	Escribir "                   Fichas:    (X)    (O)";
	Escribir "                  -----------------------";
	escribir "                  Juegas con la ficha (X) ";
	Escribir ".*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨* ";
	Escribir " ";
	Escribir "                   COMIENZA LA PARTIDA!!";
	
	mientras jugadas < 9 Hacer //SE COMPLETA CON 9 PORQUE ES EL MAXIMO DE JUGADAS POSIBLES
		
		Escribir " ";
		Escribir "               "," 7 | 8 | 9","          ",vector(7)," | ",vector(8)," | ",vector(9);
		Escribir "               ","---+---+---        ---+---+---";
		Escribir "               "," 4 | 5 | 6","          ",vector(4)," | ",vector(5)," | ",vector(6);
		Escribir "               ","---+---+---        ---+---+---";
		Escribir "               "," 1 | 2 | 3","          ",vector(1)," | ",vector(2)," | ",vector(3);
		escribir " ";
		
		si jugador = 2 Entonces	
			Repetir
				n<-azar(10);
				
			Hasta Que vector(n)=" ";
		SiNo
			Repetir
			
			Escribir ".*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨* ";
			Escribir Sin Saltar "             Te toca, ingrese una posicion:";
				leer n;
				Escribir ".*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨* ";
			Hasta Que n > 0 y n < 10 
		FinSi
		
		
		si n > 0 y n < 10 Entonces
			si jugador == 1 Entonces //SI LE TOCA AL JUGADOR 1, COMPLETARÁ LOS ESPACIOS EN BLANCO CON UNA "X"
				si vector(n) ==" " entonces
					vector(n) <- "X";
					jugador <- 2;
					si vector(1) =="X" y vector(2) == "X" y vector(3) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(4) =="X" y vector(5) == "X" y vector(6) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(7) =="X" y vector(8) == "X" y vector(9) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(1) =="X" y vector(4) == "X" y vector(7) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(2) =="X" y vector(5) == "X" y vector(8) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(9) =="X" y vector(6) == "X" y vector(3) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(1) =="X" y vector(5) == "X" y vector(9) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
					si  vector(7) =="X" y vector(5) == "X" y vector(3) == "X" Entonces
						Ganar(jugador);
						jugadas <- 9;
					FinSi
				SiNo
					Escribir "Parece que esa casilla está ocupada. Por favor, elige otra para continuar el juego.";
				FinSi
			SiNo //SI NO LE TOCA AL JUGADOR 1, COMPLETARÁ LOS ESPACIOS EN BLANCO CON UNA "O"
				si vector(n) == " " entonces
					vector(n) <- "O";
					jugador <- 1;
					si vector(1) =="O" y vector(2) == "O" y vector(3) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(4) =="O" y vector(5) == "O" y vector(6) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(7) =="O" y vector(8) == "O" y vector(9) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(1) =="O" y vector(4) == "O" y vector(7) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(2) =="O" y vector(5) == "O" y vector(8) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(9) =="O" y vector(6) == "O" y vector(3) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(1) =="O" y vector(5) == "O" y vector(9) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
					si  vector(7) =="O" y vector(5) == "O" y vector(3) == "O" Entonces
						perder(jugador);
						jugadas <- 9;
					FinSi
				SiNo
					Escribir "Parece que esa casilla está ocupada. Por favor, elige otra para continuar el juego.";
				FinSi
		    FinSi
		SiNo
			jugadas <- jugadas + 1;
			//Escribir "*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*";
			//Escribir "*¨*.¸¸.*¨*.¸¸.*¨*  Parece que hemos llegado a un EMPATE *¨*.¸¸.*¨*.¸¸.*¨*";
			//Escribir "*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*.¸¸.*¨*";
		FinSi
		
	FinMientras 
	
	escribir " ";
	Escribir " ";
	Escribir " 7 | 8 | 9","          ",vector(7)," | ",vector(8)," | ",vector(9);
	Escribir "---+---+---        ---+---+---";
	Escribir " 4 | 5 | 6","          ",vector(4)," | ",vector(5)," | ",vector(6);
	Escribir "---+---+---        ---+---+---";
	Escribir " 1 | 2 | 3","          ",vector(1)," | ",vector(2)," | ",vector(3);
	Escribir " ";
	escribir " ";
FinSubProceso

SubProceso busca_minas ( usuario Por Referencia )
	
	Dimension num[9,9];Dimension fan[9,9]; // Declaración de las matrices para representar el tablero de juego 
	Definir num,fan,mina_pisada,num_minas_car como caracter;
	Definir salir,retirada como caracter;
	Definir num_minas,opcion_numero,op,fil,col,i,j,xe,ye,verificar,varX,varY,busX,busY,marX,marY,nivel,opc como Entero;
	retirada<-'';
	Repetir
		limpiar pantalla;
		Escribir "**************   BUSCA MINAS     ****************";	
		Escribir "**************   1. NUEVO JUEGO  ****************";
		Escribir "**************   2. SALIR        ****************";
		Leer opcion_numero;
		
		
		Segun opcion_numero Hacer
			1:
				Repetir
					limpiar pantalla;
					Escribir "**************  NIVEL    ";
					Escribir "**************  1. FACIL [5 minas]  ";
					Escribir "**************  2. INTERMEDIO [10 minas]    ";
					Escribir "**************  3. DIFICIL  [15 minas]  ";
					Leer opc;
					Segun opc Hacer
						1:
							nivel<-5;
						2:
							nivel<-10;
						3:
							nivel<-15;
						De Otro Modo:
							Escribir "Opcion no valida";
					FinSegun
				Hasta Que opc>=1 y opc<=3
				
				num_minas<-0;
				op<-1;
				para fil<-0 hasta 7 con paso 1 hacer
					Para col<-0 Hasta 7 Con Paso 1 Hacer
						num[fil,col]<-"-";
						fan[fil,col]<-"-";
					FinPara
				finpara
				
				//UBICACION DE MINAS AL AZAR
				Para i<-1 Hasta nivel Con Paso 1 Hacer
					xe <- azar(6)+1;
					ye <- azar(6)+1;
					si num[xe,ye]="-" entonces
						num[xe,ye]<-"X";
					Sino
						i<-i-1;
					finsi
				FinPara
				
				Repetir
					//VERIFICAR SI HAY MINAS
					verificar<-0;
					para fil<-1 hasta 7 con paso 1 hacer
						Para col<-1 Hasta 7 Con Paso 1 Hacer
							si fan[fil,col]="-" Entonces
								verificar<-1;
							FinSi
						FinPara
					finpara
					si verificar=0 entonces
						Escribir "_______________________________________________";
						Escribir "Felicidades has encontrado todas las minas!!";
						Escribir "GANASTE!!"; retirada<-"s";
						Esperar Tecla;
					FinSi
					
					LimpiarPantalla;
					Escribir "       1   2   3   4   5   6    ";
					
					Escribir 1,"    | ",fan[1,1]," | ",fan[1,2]," | ",fan[1,3]," | ",fan[1,4]," | ",fan[1,5]," | ",fan[1,6]," | ";
					Escribir 2,"    | ",fan[2,1]," | ",fan[2,2]," | ",fan[2,3]," | ",fan[2,4]," | ",fan[2,5]," | ",fan[2,6]," |      *Marcar Mina Presione [f10]";
					Escribir 3,"    | ",fan[3,1]," | ",fan[3,2]," | ",fan[3,3]," | ",fan[3,4]," | ",fan[3,5]," | ",fan[3,6]," |        Despues tecla [enter]";
					Escribir 4,"    | ",fan[4,1]," | ",fan[4,2]," | ",fan[4,3]," | ",fan[4,4]," | ",fan[4,5]," | ",fan[4,6]," |      *Retirada presione [f11]";
					Escribir 5,"    | ",fan[5,1]," | ",fan[5,2]," | ",fan[5,3]," | ",fan[5,4]," | ",fan[5,5]," | ",fan[5,6]," |        Despues tecla [enter]";
					Escribir 6,"    | ",fan[6,1]," | ",fan[6,2]," | ",fan[6,3]," | ",fan[6,4]," | ",fan[6,5]," | ",fan[6,6]," | ";
					
					
					
					Escribir "Coordenada en  X";
					Leer varX;
					Escribir "Coordenada en  Y";
					Leer varY;
					
					si varX>=1 y varY>=1 y varX<=7 y varY<=7 entonces
						mina_pisada<-num[varY,varX];
						
						si !mina_pisada="X" entonces
							
							Repetir					
								busX<-varX;
								busY<-varY;
								Segun op Hacer
									1:
										busX<-busX-1;
									2:
										busX<-busX-1;busY<-busY-1;
									3:
										busY<-busY-1;
									4:
										busX<-busX+1;busY<-busY-1;
									5:
										busX<-busX+1;
									6:
										busX<-busX+1;busY<-busY+1;
									7:
										busY<-busY+1;
									8:
										busX<-busX-1;busY<-busY+1;
									De Otro Modo:
										Escribir "Error: Terminando escaneo Minas";
								FinSegun
								op<-op+1;
								si num[busY,busX]='X' Entonces
									num_minas <- num_minas+1;
								FinSi
								
								
							Hasta Que op=9
							num_minas_car<-ConvertirATexto(num_minas);
							fan[varY,varX]<- num_minas_car;
							op<-1;num_minas<-0;
						Sino
							LimpiarPantalla;
							Escribir "       1   2   3   4   5   6   ";
							para j<-1 hasta 6 con paso 1 hacer
								Escribir j,"     | ",num[j,1]," | ",num[j,2]," | ",num[j,3]," | ",num[j,4]," | ",num[j,5]," | ",num[j,6]," | ";
							FinPara
							
							Escribir "*************************************";
							Escribir "HAS PISADO UNA MINA!!";
							Escribir "GAME OVER";
							Escribir "Perdedor";
							esperar tecla;
							retirada<-"s";
						FinSi
					Sino si varX=11 o varY=11 entonces
							Escribir "¿Estas seguro que quieres retirarte del Juego?[S/N]";
							leer retirada;
						Sino si	varX=10 o varY=10 entonces
								Escribir "Digite cordenada X de mina que desea marcar";
								Leer marX;
								Escribir "Digite cordenada Y de mina que desea marcar";
								Leer marY;
								fan[marY,marX]<-"?";
							FinSi
							
						FinSi
						
					FinSi
					
				Hasta Que retirada='s' o retirada='S'
				retirada<-'';
			2:
				Escribir "Gracias por participa!!";
				
			De Otro Modo:
				Escribir "Entrada no valida";
		FinSegun
		
	Hasta Que opcion_numero=2
FinSubProceso

//Juego Lucas/Andy
SubProceso Trivia (General Por Referencia)
	Definir contador, puntaje como Entero;
    Definir respuesta,nom como Caracter;
    
    contador <- 0;
    puntaje <- 0;
    
    Escribir "Bienvenido al juego de preguntas de cultura general";
	Escribir "¡Atencion! Recuerda que todas las preguntas no deben";
	Escribir "contener ni Mayusculas ni tildes";
	Escribir "";
    Escribir "Por favor, responde las siguientes preguntas:";
	Escribir "";
	Escribir "¿Como te llamas?";
	leer nom;
    
    Escribir nom," ¿Cuál es la capital de Francia?"; Leer respuesta;
    Si respuesta = "paris" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	finsi
	
	Escribir "2. ¿En qué continente se encuentra el desierto del Sahara?"; Leer respuesta;
	Si respuesta = "africa" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "3. ¿Quién escribió Don Quijote de la Mancha?";
	Leer respuesta;
	Si respuesta = "miguel de cervantes" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "4. ¿Cuál es el océano más grande del mundo?"; Leer respuesta;
	Si respuesta = "oceano pacifico" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "5. ¿Cuál es el metal más abundante en la corteza terrestre?"; Leer respuesta;
	Si respuesta = "aluminio" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "6. ¿Quién pintó la Mona Lisa?"; Leer respuesta;
	Si respuesta = "leonardo da vinci" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "7. ¿Cuál es el país más poblado del mundo?"; Leer respuesta;
	Si respuesta = "china" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "8. ¿Cuál es la moneda oficial de Japón?"; Leer respuesta;
	Si respuesta = "yen" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	Escribir "9. ¿Qué famosa estructura se encuentra en Atenas y fue construida en el siglo V a.C.?"; Leer respuesta;
	Si respuesta = "la acropolis" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "10. ¿Qué año marcó el fin de la Segunda Guerra Mundial?"; 
	Escribir "(CON NUMEROS)";
	Leer respuesta;
	Si respuesta = "1945" Entonces 
		puntaje <- puntaje + 1;
		contador <- contador + 1;
	FinSi
	
	
	Escribir "Has respondido ", puntaje, " preguntas correctamente de un total de 10";
FinSubProceso

//Juego JORGE/MATIAS/NICO
//Aqui adjuntamos El Proceso principal del juego de carreras-autos, con su menu, ciclos y estructuras.

SubProceso CarreraAutos(AutosCarreras por referencia)
	Definir opc, car, PuntosA, PuntosB como Entero;
	opc <- 0;	
	car <- 1;
	PuntosA <- 0;
	PuntosB <- 0;
	Mientras (opc <> 4) Hacer						
		Limpiar Pantalla;
		Escribir "";
		Escribir "                                                        ~~~~~ MENU PRINCIPAL DEL JUEGO ~~~~~";
		Escribir "                                                       |  [1] CANTIDAD DE CARRERAS         |";
		Escribir "                                                       |  [2] JUGAR                        |";
		Escribir "                                                       |  [3] VER PREMIOS                  |"; 			
		Escribir "                                                       |  [4] SALIR                        |";
		Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
		Escribir Sin Saltar "                                                       Seleccione una opción : ";
		Leer opc;	
		Segun (opc) Hacer
			1: 
				car <- carreras;
			2 : 
				jugaremos(car, PuntosA, PuntosB);
			3: 				
				premios(PuntosA, PuntosB);
		FinSegun
	FinMientras
	gracias;	
FinSubProceso

SubProceso a <- carreras
    Definir opc_a, a como Entero;
    opc_a <- 0;	
    Mientras (opc_a <> 4) Hacer
        Limpiar Pantalla;
        Escribir "";
        Escribir "                                                        ~~~~~~~~~ CANTIDAD DE CARRERAS ~~~~~~~~~";
        Escribir "                                                       |  [1] Una sóla Carrera [Por defecto]   |";
        Escribir "                                                       |  [2] Tres Carreras                    |"; 	
        Escribir "                                                       |  [3] Cinco Carreras                   |";
        Escribir "                                                       |  [4] Menu Anterior                    |";
        Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
        Escribir Sin Saltar "                                                       Seleccione una opción : ";
        Leer opc_a;	
        Segun (opc_a) Hacer
            1 : a <- 1; opc_a <- 4;
            2 : a <- 3; opc_a <- 4;
            3 : a <- 5; opc_a <- 4;
        FinSegun
    FinMientras	
FinSubProceso

SubProceso jugaremos(car por referencia, PA por Referencia, PB por Referencia)
    Definir ii, x, v, c1, c2, c3, i como Entero;
    Definir xb, a, b, c, r1, r2, r3, ganador como Caracter;
    Definir auto como Caracter;
    Definir inicia como Logico;
    Dimension auto[10,91];	
	
    ii <- 0;
	
    Para ii <- 1 Hasta car Con Paso 1 Hacer
        x <- 0;
        v <- 0;
        c1 <- 0;
        c2 <- 0;
        c3 <- 0;
        a <- " ";
        b <- " ";	
        c <- " ";			
        inicia <- Verdadero;
		
        Mientras c1 <= 120 y c2 <= 120 Hacer
            Esperar 50 Milisegundos;
            Borrar Pantalla;	
            v <- aleatorio(1,3);
            segun(v) Hacer
                1 : r1 <- " "; c1 <- c1 + 1;
                2 : r1 <- "  "; c1 <- c1 + 2;
                3 : r1 <- "   "; c1 <- c1 + 3;
            FinSegun
            a <- CONCATENAR(a,r1);			
            v <- aleatorio(1,3);
            segun(v) Hacer
                1 : r2 <- " "; c2 <- c2 + 1;
                2 : r2 <- "  "; c2 <- c2 + 2;
                3 : r2 <- "   "; c2 <- c2 + 3;
            FinSegun
			
            Escribir "";
            Escribir  "                                                              CARRERA Nro ",ii," DE ",car;
            Escribir "";
			
            b <- CONCATENAR(b,r2);			
            auto[0,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 
            auto[1,x]<- CONCATENAR(a,"       ________"); 
            auto[2,x]<- CONCATENAR(a,"   __/    A     ____");
            auto[3,x]<- CONCATENAR(a," (__ o ___________ o _) ");	
            auto[4,x]<- ""; 
            auto[5,x]<- CONCATENAR(b,"       ________"); 
            auto[6,x]<- CONCATENAR(b,"   __/    B     ____");
            auto[7,x]<- CONCATENAR(b," (__ o ___________ o _) ");	
            auto[8,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 				
            para i <- 0 Hasta 8 con Paso 1 Hacer
                Escribir auto[i,x];
            FinPara			
            Si (inicia == Verdadero) Entonces
                Escribir "";
                Escribir "                                                         Presiona ENTER para comenzar...";
                Esperar Tecla;
                inicia <- Falso;
            FinSi	
        FinMientras
        Borrar Pantalla;		
		
        Escribir "";
        Escribir  "                                                              CARRERA Nro ",ii," DE ",car;
        Escribir "";
		
        Si (c1 >= c2) Entonces	
            xb <- "";
            para i <- 1 Hasta c1-c2 con Paso 1 Hacer
                xb <- concatenar(xb," ");
            FinPara	
            xb <- CONCATENAR(xb,"|");		
            auto[0,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 
            auto[1,x]<- CONCATENAR(a,"       ________         | G "); 
            auto[2,x]<- CONCATENAR(a,"   __/    A     ____    | A ");
            auto[3,x]<- CONCATENAR(a," (__ o ___________ o _) | N ");	
            auto[4,x]<- CONCATENAR(a,"                        | A ");
            auto[5,x]<- CONCATENAR(CONCATENAR(b,"       ________         "),xb); 
            auto[6,x]<- CONCATENAR(CONCATENAR(b,"   __/    B     ____    "),xb); 
            auto[7,x]<- CONCATENAR(CONCATENAR(b," (__ o ___________ o _) "),xb); 
            auto[8,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 
            para i <- 0 Hasta 8 con Paso 1 Hacer
                Escribir auto[i,x];
            FinPara					
            ganador <- "GANADOR AUTO [ A ]";	
            PA <- PA + 1;
        Sino
            xb <- "";
            para i <- 1 Hasta c2-c1 con Paso 1 Hacer
                xb <- concatenar(xb," ");
            FinPara	
            xb <- CONCATENAR(xb,"|");		
            auto[0,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 
            auto[1,x]<- CONCATENAR(CONCATENAR(a,"       ________         "),xb); 
            auto[2,x]<- CONCATENAR(CONCATENAR(a,"   __/    A     ____    "),xb); 
            auto[3,x]<- CONCATENAR(CONCATENAR(a," (__ o ___________ o _) "),xb); 
            auto[4,x]<- CONCATENAR(b,"                        | G "); 
            auto[5,x]<- CONCATENAR(b,"       ________         | A "); 
            auto[6,x]<- CONCATENAR(b,"   __/    B     ____    | N "); 
            auto[7,x]<- CONCATENAR(b," (__ o ___________ o _) | A "); 
            auto[8,x]<- "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"; 		
            para i <- 0 Hasta 8 con Paso 1 Hacer
                Escribir auto[i,x];
            FinPara		
            ganador <- "GANADOR AUTO [ B ]";		
            PB <- PB + 1;
        FinSi			
		
        Escribir "";
        Escribir "                                                              ",ganador;
        Escribir "";		
        Escribir "                                 Pulsa Cualquier Tecla para la siguiente Carrera [",ii," de ",car,"]";
        Esperar Tecla;
		
    FinPara
	
FinSubProceso

SubProceso premios(PA por Referencia, PB por Referencia)
	
    Definir z, w como Entero;
    Definir e, G1, G2 como caracter;
	
    Limpiar Pantalla;
	
    Si (PA == 0 y PB == 0) Entonces
        Limpiar Pantalla;
        Escribir "";
        Escribir "";
        Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
        Escribir "                                                       |   AUN NO SE CORRIO NINGUNA CARRERA....   |";
        Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";		
    SiNo
        Si (PA > PB) Entonces
            G1 <- "A";
            G2 <- "B";
        Sino
            G1 <- "B";
            G2 <- "A";
        FinSi
		
        e <- "                                                                  ";	
        Para z <- 1 Hasta 10 Hacer
            e <- concatenar(e," ");
            Escribir Sin Saltar e;
            Para w <- z Hasta 20-z Hacer
                Escribir Sin Saltar "*";				
            FinPara				
            Escribir "";
        FinPara	
        e <- "                                                                  ";	
        Para z <- 1 Hasta 3	 Hacer
            SI (z == 2) Entonces
                Escribir "                                                                  |      AUTO ",G1,"      |";
                Escribir "                                                                  |    COPA DE ORO   |";
            SiNo
                Escribir Sin Saltar e;
                Para w <- 20 Hasta 1 Hacer
                    Escribir Sin Saltar "*";				
                FinPara				
                Escribir "";
            FinSi			
        FinPara
		
        Escribir "";
        Escribir "";
        Escribir "";
		
        e <- "                                                                  ";	
        Para z <- 1 Hasta 10 Hacer
            e <- concatenar(e," ");
            Escribir Sin Saltar e;
            Para w <- z Hasta 20-z Hacer
                Escribir Sin Saltar "|";				
            FinPara				
            Escribir "";
        FinPara	
        e <- "                                                                  ";	
        Para z <- 1 Hasta 3	 Hacer
            SI (z == 2) Entonces
                Escribir "                                                                  |      AUTO ",G2,"      |";
                Escribir "                                                                  |   COPA DE PLATA  |";
            SiNo
                Escribir Sin Saltar e;
                Para w <- 20 Hasta 1 Hacer
                    Escribir Sin Saltar "|";				
                FinPara				
                Escribir "";
            FinSi			
        FinPara
    FinSi
    Escribir "";
    Escribir "                                                              Presiona ENTER para Continuar...";
    PA <- 0;
    PB <- 0;
    Esperar Tecla;
FinSubProceso

SubProceso gracias
    Limpiar Pantalla;
    Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~";
    Escribir "                                                       |   Gracias por jugar |";
    Escribir "                                                       ~~~~~~~~~~~~~~~~~~~~~~~";
FinSubProceso


SubProceso starwars(1)
	definir m, hm, hm2, wing, instrucciones, logodeljuego, cadena2, cadena1, nombre, resp, resul1, resul2, resul10 Como Caracter;
	definir cadena3, me3, m4, barc2, p, barc3, barc4, barc03, g, contrasenia, ultimo Como Caracter;
	definir a, b como cadena;
	definir i, j, l, puntos, numx, x como Entero;
	
	
	Dimension instrucciones[5];
	instrucciones[0]<-"                                                                          ______________________________________ ";
	instrucciones[1]<-"                                                                         |  X: para disparar                    |";
	instrucciones[2]<-"                                                                         |  A: para desplazarte a la izquierda  |";
	instrucciones[3]<-"                                                                         |  D: para desplazarte a la derecha    |";
	instrucciones[4]<-"                                                                        |______________________________________|";
	
	Dimension logodeljuego[16];
	logodeljuego[0]<-"                                                             _________________      ____         __________                       ";
	logodeljuego[1]<-"                               *       *     *              /                 |    /    \    .  |          \                      ";
	logodeljuego[2]<-"                                    *             *        /    ______   _____| . /      \      |    ___    |     .     .        ";
	logodeljuego[3]<-"                                                           \    \    |   |       /   /\   \     |   |___>   |                    ";
	logodeljuego[4]<-"                                          *                 \    \   |   |      /   /__\   \  . |         _/             .       ";
	logodeljuego[5]<-"                                *                    _______      |      |     /   |  |   | \   |   |\    \_______    .          ";
	logodeljuego[6]<-"                                                    |            /   |   |    /    ______    \  |   | \           |              "; 
	logodeljuego[7]<-"                                                    |___________/    |___|   /____/      \____\ |___|  \__________|    .         ";
	logodeljuego[8]<-"                                 .        *           ____    __  . _____   ____      .  __________   .  _________               "; 
	logodeljuego[9]<-"                                                     \    \  /  \  /    /  /    \       |          \    /         |      .       ";
	logodeljuego[10]<-"                                                     \    \/    \/    /  /      \      |    ___    |  /    ______|  .           ";
	logodeljuego[11]<-"                                                      \              /  /   /\   \ .   |   |___>   |  \    \                    ";
	logodeljuego[12]<-"*     *     *     *     *     *     *     *     *      \            /  /   /__\   \    |         _/.   \    \                   ";
	logodeljuego[13]<-"  *     *      *     *     *     *     *     *          \    /\    /  /            \   |   |\    \______>    |   .              ";
	logodeljuego[14]<-"      *     *     *     *     *     *     *     *        \  /  \  /  /    ______    \  |   | \              /          .        ";
	logodeljuego[15]<-"*     *     *     *     *     *  *     *     *     .      \/    \/  /____/      \____\ |___|  \____________/                    "; 
	
	Dimension cadena1[2];
	cadena1[0]<-"      *     *     *     *     *     *     *     *     *      *      *     *     *      *       *     *     *    *    * ";
	cadena1[1]<-"  *      *     *     *     *     *     *     *     *     *       *     *     *      *      *      *      *    *    * ";
	
	
	
	//Ingreso las imagenes-ascii de las naves como vectores por lineas a un valor
	Dimension wing[10];
	wing[0]<-"          __           __________           ___   ";
	wing[1]<-"          \ \_________\/\ ;\_\-\/___________\  \  ";
	wing[2]<-"           (O)]]]]]]_\___\_##_ \##____\___[[[[(O) ";
	wing[3]<-"              _______/____\___\ \___/________     ";
	wing[4]<-"            /\______(O)\___ \|\_\_____(O)___/     ";
	wing[5]<-"            \_\           \- \          \ \     ";
	wing[6]<-"             \ \              \-\        \ \    ";
	wing[7]<-"              \ \              \ \        \ \   ";
	wing[8]<-"               \ \              \-\       (º))  "; 
	wing[9]<-"               ((º)              (O)            ";  
	
	dimension hm2[15];
	hm2[0]<-"             _/____\_                                      ";   
	hm2[1]<-"       _.,--** |^ | **z.__                                 "; 
	hm2[2]<-"      /_/^ ___\|  | _/o\  `-._                             ";
	hm2[3]<-"    _/  ]. L_| | .|  \_/_  . _`--._                        ";
	hm2[4]<-"   /_~7  _ .  |. | /] \ ]. (_)  .  --.--                   "; 
	hm2[5]<-"  |__7~.(_)_ []|+--+|/____T_____________L|                 ";
	hm2[6]<-"  |__|  _^(_) /^   __\____ _   _|                           ";
	hm2[7]<-"  |__| (_){_) J ]K{__ L___ _   _]                          ";
	hm2[8]<-"  |__| . _(_) \v     /__________|________                  ";
	hm2[9]<-"  l__l_ (_). []|+-+-<\^   L  . _   - ---L|                 ";  
	hm2[10]<-"  \__\    __. |^l  \Y] /_]  (_) .  _,---                  "; 
	hm2[11]<-"    \~_]  L_| | .\ .\\/~.    _,--**                       ";
	hm2[12]<-"     \_\ . __/|  |\  \`-+-<**                             ";
    hm2[13]<-"       ----._|J__L|X o~~|[\\      Halcón Milenario  ";
	hm2[14]<-"              \____/ \___|[//                              ";
	
	
	Dimension hm[15];	
	hm[0]<-"                 __   __            ";
	hm[1]<-"                /º|   |º\           ";
	hm[2]<-"               /  |   |  \          ";
	hm[3]<-"              /   |   |   \    _    ";
	hm[4]<-"             /   _|   |_   \  /º\   ";
	hm[5]<-"            /  --~|   |--~  \| _ |  ";
	hm[6]<-"           /.~ _\ |   |  /   |   |  ";
	hm[7]<-"          / `--`\ |   | /  _.º___/  ";
	hm[8]<-"         /        +---+  \  _.-~º   ";
	hm[9]<-"         =---.__ /  #  \__---=º     ";
	hm[10]<-"        [:::::|   (_)  |::::::]     ";
	hm[11]<-"         =--~~~~\     /~------|      ";
	hm[12]<-"        /\------/`---´\-------/      ";
	hm[13]<-"        \ \____/       \ ____/      ";
	hm[14]<-"         \____/.________\___/      ";
	
	
	//faltan agregar mas naves
	
	
	Repetir
		a<-" ";
		b<-" ";
		//Escribe el logo en movimiento
		para i<-0 hasta 15 Hacer
			Borrar Pantalla;
			para j<-i hasta 12 Hacer
				escribir " ";
			FinPara
			para j<-0 hasta 15 Hacer 
				escribir logodeljuego[j];
			FinPara
			esperar 200 Milisegundos;
		FinPara
		escribir "";
		
		//pedimos al usuario que ingrese tecla para continuar
		escribir "                                                                <<<PRESIONE UNA TECLA PARA CONTINUAR>>> ";
		Esperar Tecla;
		//se inicia una cuenta regresiva de 5 segundos
		para i<-1 hasta 4 Hacer
			Borrar Pantalla;
			escribir "                                                                                           INICIO en : ", 4-i;
			esperar 1 Segundos;
		FinPara
		borrar pantalla;
		
		escribir "                                                               *****************************************************";
		escribir "                                                               ========================== Nivel 1===================";
		esperar 1 Segundos;
		cadena2<-"...............................................................................................................................";
		
		//con el valor de i inicializado en 1, realizará el siguiente proceso hasta 75 veces
		para i<-1 hasta 75 Hacer
			//imprimira las cadenas 1  y 2(el cielo), luego segun el valor de i un mensaje
			Escribir cadena1[0];
			Escribir cadena1[1];
			Escribir cadena2;
			Escribir "";
			escribir "";
			si i<30 Entonces
				escribir "despues de la invasion a nuestro planeta...";
				Escribir "";
			SiNo
				si i<55 Entonces
					escribir "salimos en busca de los traidores...";
					Escribir "";
				FinSi
			FinSi
			// la variable a contiene un espacio, se escribira antes del vector imagen para generar el movimiento
			para j<-0 hasta 14 Hacer
		    	escribir a, hm2[j];
			FinPara
			escribir cadena2;
			escribir cadena1[0];
			escribir cadena1[1];
			//le doy mas espacios a la variable "a" con la concatenar
			a<-concatenar(a," ");
			esperar 72 Milisegundos;
			Borrar Pantalla;
			//espera los 72milisegundos acto seguido borra la pantalla, crea movimiento hacia la derecha
		FinPara
		m<-"";
		g<-"  ";
		a<-" ";
		//Genera una cantidad de espacios al azar para "m"
		puntos<-0;
		numx<-azar(74);
		
		para l<-1 hasta numx Hacer
			m<-Concatenar(m," ");
		FinPara
		
		//Sigue con la historia de juego, y pido nick al usuario, para llamarlo asi todo el game
		//se dan instruccion y para seguir el usuario debera apretar una tecla para segurarnos que haya leido
		escribir "                                                                                    ________   ___   ____                                       ";
		escribir "                                                                                   / __   __| / _ \ |  _ \                                      ";
		escribir "                                                                             ______> \ | |   |  _  ||    /_____________________________          ";
		escribir "                                                                            / _______/ |_|   |_| |_||_|\______________________________ \         ";
		escribir "                                                                           / /                                                        \ \        ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                Soldado, Ingrese su Alias o Nick          | |       ";
		Escribir "                                                                          | |                                                          | |       ";
	    escribir "                                                                           \ \____________________________    _   ___   ____   _______/ /        "; 
		escribir "                                                                            \___________________________  |  | | / _ \ |  _ \ / _______/         ";
		escribir "                                                                                                        | |/\| ||  _  ||    / > \               "; 
		escribir "                                                                                                         \_/\_/ |_| |_||_|\_\|__/                ";
		leer nombre;
		Escribir "                                                                                           <<<PRESIONE UNA TECLA PARA CONTINUAR>>>";
		Esperar Tecla;
		
		Borrar Pantalla;

		
		escribir "                                                                                    ________   ___   ____                                       ";
		escribir "                                                                                   / __   __| / _ \ |  _ \                                      ";
		escribir "                                                                             ______> \ | |   |  _  ||    /_____________________________          ";
		escribir "                                                                            / _______/ |_|   |_| |_||_|\______________________________ \         ";
		escribir "                                                                           / /                                                        \ \        ";
		escribir "                                                                          | |                                                          | |       ";
		Escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | | Soldado  ", nombre,"  Las fuerzas del imperio contratacan| |       ";
		escribir "                                                                          | |            Hemos localizado la nave enemiga,             | |       ";
		escribir "                                                                          | |            su primera misión es derribarla               | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                           \ \____________________________    _   ___   ____   _______/ /        "; 
		escribir "                                                                            \___________________________  |  | | / _ \ |  _ \ / _______/         ";
		escribir "                                                                                                        | |/\| ||  _  ||    / s \               "; 
		escribir "                                                                                                         \_/\_/ |_| |_||_|\_\|__/               "; 
		escribir "";
		Escribir "                                                                                             <<<PRESIONE UNA TECLA PARA CONTINUAR>>>";
		Esperar Tecla;
		
						
		Borrar Pantalla;
		
		//indico las instrucciones de juego
		Escribir "                                                                                         Instrucciones:";
		para l<-0 hasta 4 Hacer
			Escribir instrucciones[l];
			esperar 2 Milisegundos;
		FinPara
		
		//espera tecla para continuar y que se borre pantalla
		Escribir "                                                                            <<<PRESIONE UNA TECLA PARA CONTINUAR>>>";
		Esperar Tecla;
		Borrar Pantalla;
		//Estructura repetir, por si el usuario desea utilizar nuevamente sin tener que regresar al menu principal
		
		Repetir
			//escribir la puntuación
			b<-" ";
			escribir "                                                                                 ----------------------------";
			Escribir "                                                                                 #  PUNTUACION: ",puntos," #";
			Escribir "                                                                                 ----------------------------";
			//escribe la cadena de caracteres para el cielo
			Escribir cadena1[0];
			Escribir cadena1[1];
			Escribir cadena2;
			//escribe a la nave que utiliza el usuario
			para j<-0 hasta 9 Hacer
				escribir m, wing[j];
			FinPara
			//escribe la variable 'a' que en este caso es un espacio junto a la variable 'b' que también contiene un espacio
			para j<-1 hasta 10 Hacer
				escribir a,b;
			FinPara
			
			//escribe la variable m, que se genero una cantidad de espacios al azar para que tenga distintas posiciones aleatorias
			//seguido de la nave enemiga
			para j<-0 hasta 14 Hacer 
				escribir a, hm[j];
			FinPara
			
			//escribe las cadenas para el cielo
			Escribir cadena2;
			Escribir cadena1[0];
			Escribir cadena1[1];
			Escribir "";
			//leo respuesta del usuario
			leer resp;
			// si el user ingresa 'a' entonces nuestra nave se moverá la izquierda de la pantalla 12 espacios
			si resp="a" o resp="A" Entonces
				a<-Subcadena(a,12,longitud(a));
			SiNo
				// si el user ingresa'd' nuestra nave se moverá 12 espacios a la derecha de la pantalla
				si resp="d" o resp="D" Entonces
					a<-Concatenar(a,"            ");
				FinSi
				//si el usuario ingresa 'x', se mostraran los disparos
				si resp="x" o resp="X" Entonces
					//asignaremos espacios y un aterisco a la variable b para que haga disparos
					b<-"                       *"; //Con esto regulo la direccion del disparo
					Borrar Pantalla;
					//ahora reescribo los puntos
					Escribir "";
					Escribir "";
					Escribir "";
					Escribir cadena1[0];
					Escribir cadena1[1];
					escribir cadena2;
					para j<-0 hasta 9 Hacer
						Escribir a, wing[j];
					FinPara
					para j<-1 hasta 5 Hacer //con esto regulas la longitud del disparo, es decir 'b'
						Escribir a,b;
					FinPara
					para j<-0 hasta 14 Hacer 
						escribir a, hm[j];
					FinPara
					escribir cadena2;
					escribir cadena1[0];
					escribir cadena1[1];
					esperar 200 Milisegundos;
					
					//cuando muestra los disparos contamos los puntos
					// cada acierto suma 10 puntos
					// para ello concatenamos a y b, junto las cadenas m y nave enemiga y comparamos sus longitudes
					// entonces si la longitud de los disparos está dentro del espacio enemigo, sumara 10 puntos
					resul1<-Concatenar(a,b);
					resul2<-Concatenar(m,wing[9]);
					si Longitud(resul1)<Longitud(resul2) y Longitud(resul1)>Longitud(m) Entonces
						puntos<-puntos+10;
					FinSi
					//restablezco nueva posición para m al azar
					m<-" ";
					numx<-azar(70);
					para l<-1 hasta numx Hacer
						m<-Concatenar(m, " ");
						
					FinPara
				FinSi
			FinSi
			Borrar Pantalla;
			Escribir "";
			//el nivel finaliza cuando el usuario logre 180 puntos	
			
		Hasta Que puntos = 180
		//aca muestro resultados del nivel y posibles intruccionespara un nivel 2
		
		Escribir "                                                                                     ---   NIVEL 1 COMPLETADO      -";
		Escribir "                                                                                         *PUNTUACION:", puntos, "*";
		Escribir "                                                                                     ------------------------------";
		Esperar 2 Segundos;
		Borrar Pantalla;
		
		//verifica si desea seguir jugando
		escribir "                                                                                    ________   ___   ____                                       ";
		escribir "                                                                                   / __   __| / _ \ |  _ \                                      ";
		escribir "                                                                             ______> \ | |   |  _  ||    /_____________________________          ";
		escribir "                                                                            / _______/ |_|   |_| |_||_|\______________________________ \         ";
		escribir "                                                                           / /                                                        \ \        ";
		escribir "                                                                          | |                                                          | |       ";
		Escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | | Soldado  ", nombre,"  Si desea continuar con la mision   | |       ";
		escribir "                                                                          | |            digite s, si desea finalizar digite n         | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                          | |                                                          | |       ";
		escribir "                                                                           \ \____________________________    _   ___   ____   _______/ /        "; 
		escribir "                                                                            \___________________________  |  | | / _ \ |  _ \ / _______/         ";
		escribir "                                                                                                        | |/\| ||  _  ||    / > \               "; 
		escribir "                                                                                                         \_/\_/ |_| |_||_|\_\|__/               "; 
		
		Repetir
			leer resp;
		Hasta Que resp="s" o resp= "n"
				
				
	Hasta Que resp="n"
		
FinSubProceso



Proceso GuerraDeLasGalaxias
	definir tecla1 Como Entero;;
	Escribir "*******************************************";
	Escribir "**BIENVENIDOS AL POOL DE JUEGOS DE LA UTN**";
	Escribir "*******************************************";
	Escribir "SELECCIONE EL JUEGO QUE DESEE JUGAR";
	Leer tecla1;
	Segun tecla1 Hacer
		1:
			starwars(1);
		2:
			jugar(juego);
		3:
			busca_minas(usuario);
		4:
			Trivia(General);
		5: 
			CarreraAutos(AutosCarreras);
			
	FinSegun
	
	
FinProceso
