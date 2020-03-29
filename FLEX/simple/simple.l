%option yylineno
ENTERO [0-9]+|%[xX][0-9a-fA-F]+|%[oO][0-7]+
ID [_]?[a-zA-Z]+([_a-zA-Z0-9]+)?
DELIM "("|")"|":"|";"|","|".."|"|"|"=>"
OPERADOR "+"|"-"|"*"|"/"|"--"|"++"|"\\"|"^"|"<-"|"->"|":="|":+"|":-"|":/"|":\\"|":^"|":<"|":>"|"."|"["|"]"|"{"|"}"|"::"|"<"|">"|"<="|">="|"="|"~="|"~"|"/\\"|"\/"
RESERVADA abstracto|booleano|bucle|caracter|casos|clase|como|constante|constructor|corto|cuando|de|descendente|destructor|devolver|diccionario|en|entero|entonces|enumeracion|es|especifico|excepcion|exportar|falso|fin|final|finalmente|generico|importar|largo|lanza|libreria|lista|mientras|objeto|otro|para|principio|privado|programa|protegido|prueba|publico|rango|real|referencia|registro|repetir|salir|si|signo|siguiente|sino|subprograma|tabla|tipo|ultima|valor|verdadero
REAL_O %[oO]([0-7]+)?(\.)([0-7]+)(\^[+-]?[0-7]+)?
REAL_X %[xX]([0-9a-fA-F]+)?((\.)[0-9a-fA-F]+)?(\^[+-]?[0-9a-fA-F]+)?
REAL_ENT ([0-9]+)?(\.)?[0-9]+(\^[+-]?[0-9]+)?
CADENA \"(\\.|[^"\’])*\"
CARACTER ’(%(’|\"|%|n|r|t))’|’(%(o|O)[0-3][0-7][0-7])’|’(%(x|X)[0-9a-fA-F]+)’|’([%]?[0-2][0-5]?[0-5]?)’|’([a-z0-9])’

%%

##.+      ;
\#.*[\n]?.*\}   ;
{CARACTER} printf( "linea %d, caracter: %s\n", yylineno, yytext );
{ENTERO} printf( "linea %d, ctc entera: %s\n", yylineno, yytext );
{REAL_O} printf( "linea %d, ctc real: %s\n", yylineno, yytext );
{REAL_X} printf( "linea %d, ctc real: %s\n", yylineno, yytext );
{REAL_ENT} printf( "linea %d, ctc real: %s\n", yylineno, yytext );
{OPERADOR} printf( "linea %d, operador: %s\n", yylineno, yytext );
{DELIM} printf( "linea %d, delimitador: %s\n", yylineno, yytext );
{RESERVADA} printf( "linea %d, palabra reservada: %s\n", yylineno, yytext );
{ID} printf( "linea %d, identificador: %s\n", yylineno, yytext );
{CADENA} printf( "linea %d, cadena: %s\n", yylineno, yytext );
(\t|" ")+    ;
\n { }
. printf( "linea %d, ERROR: carácter no reconocido: %s\n", yylineno, yytext );

%%

int yywrap() {
  return(1);
}

int main(int argc, char *argv[])
{

    if (argc < 2) {
        printf("Uso: ./simple NombreArchivo\n");
    }
    else {
        yyin = fopen(argv[1],"r");
        yylex();
    }
}