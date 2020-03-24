%option yylineno

RESERVADA  abstracto| booleano| bucle | caracter | casos | clase | como | constante | constructor | corto | cuando | dedescendente | destructor | devolver | diccionario | en | entero | entonces | enumeracion | es | especifico | excepcion | exportar | falso | fin | final | finalmente| generico | importar | largo | lanza | libreria | lista | mientras | objeto | otro | para | principio | privado | programa | protegido | prueba | publico | rango | real | referencia | registro | repetir | salir | si | signo | siguiente | sino | subprograma | tabla | tipo | ultima | valor | verdadero
IDENTIFICADOR  [a-zA-Z_] [a-zA-Z0-9_]*
DIGITO [0-9]
DELIMITADOR  "(" | ")" | ":" | ";" | "," | ".." | "|" | "=>"
OPERADOR "+" | "-" | "*" | "/" | "--" | "++" | "\" | "^" | "<-" | "->" | ":=" | ":+" | ":/" | ":\" | ":^" | ":<" | ":>" | "." | "[" | "]" |  "{" | "}" | "::" | "<" | ">" | "<=" | ">=" | "=" | "~=" | "~" | "/\" | "\/"

%%


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
