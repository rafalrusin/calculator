%{
#include "calculator.tab.h"
using namespace std;
%}
%%
[ \t]          ;
\+             { return PLUS; }
\-             { return MINUS; }
\*             { return MUL; }
\/             { return DIV; }
\(             { return LPAREN; }
\)             { return RPAREN; }
[0-9]+         { yylval.ival = atoi(yytext); return INT; }
[a-zA-Z0-9]+   {
    yylval.sval = strdup(yytext);
    return IDENT;
}
\n             return ENDL;
.              ;
%%
