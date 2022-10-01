%{
    #include "calc.tab.h"
%}

%%

"+" {return ADD;}
"-" {return SUB;}
"*" {return MUL;}
"/" {return DIV;}
"^" {return POW;}
"(" {return OP;}
")" {return CP;}

[SsEe][AaXx][Ii][RrTt] {return exit;}

[0-9]+ {
    yylval = atoi(yytext);
    return NUMBER;
}

\n      {return EOL;}

"//".*  {  }

[ \t]   {/*ignore white space */}

.       {yyerror("Caracter misterioso: %c\n",yytext);}

%%