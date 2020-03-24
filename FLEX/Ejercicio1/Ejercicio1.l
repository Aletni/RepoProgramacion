%{ 
   int numMayus = 0, num_minus = 0,numMayus_minus; 
   int enteros = 0 ;
   int reales;
%} 

%% 

[A-Z]+   numMayus++; 
[a-z]+   num_minus++; 
[a-zA-Z]+ numMayus_minus++;
[0-9]+ enteros++;
[0-9]*\.?[0-9]+([eE][+-]?[0-9]+)?  reales++;
%% 

int yywrap() 
{ 
    return 1; 
} 

main() 
{ 
    while (yylex()); 
    printf("Numero de Mayusculas = %d\nNumero de minusculas = %d\nNumero de ambas = %d\n", numMayus,num_minus,numMayus_minus); 
    printf("Cantidad de enteros = %d\n", enteros); 
    printf("Cantidad de reales = %d\n", reales); 
} 