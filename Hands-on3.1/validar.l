%{
#include "validar.tab.h"
#include <stdlib.h>
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[ \t]+      ; // Ignorar espacios
\n          { return '\n'; }
.           { return yytext[0]; }

%%

int yywrap() {
    return 1;
}


