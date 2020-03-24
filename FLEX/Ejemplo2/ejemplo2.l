%{ 
   #include <stdio.h>
%} 

%% 

^\n  ; 
^" "+\n;
^" "+;
" "+$
" "+ putchar(' ');
%% 

