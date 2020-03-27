%option yylineno

RESERVADA abstracto|booleano|bucle|caracter|casos|clase|como|constante|constructor|corto|cuando|de|descendente|destructor|devolver|diccionario|en|entero|entonces|enumeracion|es|especifico|excepcion|exportar|falso|fin|final|finalmente|generico|importar|largo|lanza|libreria|lista|mientras|objeto|otro|para|principio|privado|programa|protegido|prueba|publico|rango|real|referencia|registro|repetir|salir|si|signo|siguiente|sino|subprograma|tabla|tipo|ultima|valor|verdadero
ID [_]?[a-zA-Z_][a-zA-Z0-9_]*
DIGITO [0-9]
REAL ([0-9]+)?(\.)?([0-9]+)((\^)(\+|-)?[0-9]+)?
DELIMITADOR  "("|")"|":"|";"|","|".."|"|"|"=>"
OPERADOR "+"|"-"|"*"|"/"|"--"|"++"|"\\"|"^"|"<-"|"->"|":="|":+"|":-"|":/"|":\\"|":^"|":<"|":>"|"."|"["|"]"|"{"|"}"|"::"|"<"|">"|"<="|">="|"="|"~="|"~"|"/\\"|"\/"
CADENA \"(\\.|[^"\\])*\"
%%

##.+             ;
\#.*[\n]?.*\}  ; 

{CADENA} printf("linea %d, cadena: %s\n",yylineno,yytext );
{RESERVADA} printf("linea %d, palabra reservada: %s\n",yylineno,yytext );
{ID} printf("linea %d, identificador: %s\n",yylineno,yytext );
{DELIMITADOR} printf("linea %d, delimitador: %s\n",yylineno,yytext );
{DIGITO}+ printf( "linea %d, ctc entera: %s\n", yylineno, yytext );
{REAL} printf("linea %d, ctc real: %s\n",yylineno,yytext );
{OPERADOR} printf("linea %d, operador: %s\n",yylineno,yytext );
(\t|" ")+    ;
. printf( "linea %d, carácter no reconocido: %s\n", yylineno, yytext );
\n { }
%%

int yywrap() {
  return(1);
  }

int main(int argc, char *argv[]) {

  if (argc < 2) {
    printf("Uso: ./simple NombreArchivo\n");
    }
  else {
    yyin = fopen(argv[1],"r");
    yylex();
    }
  }
