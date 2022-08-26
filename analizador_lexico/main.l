%%

\-?[0-9]+ {printf("Numero inteiro");}

\-?[0-9]+\.[0-9]+ {printf("Numero Real");}
\-?[0-9]+\.[0-9]+\E\-?[0-9]+ {printf("Numero Real");}

[&]{2} {printf("AND");}
[|]{2} {printf("OR");}
[!]{1} {printf("NOT");}

[+|\-|\*|\/|\|\\|\%|\^] {printf("SUM");}

[>|\<|\<=|\>=\|!=] {printf("Operadores relacionais");}


[\int|\float|\double|\char|\if|\else|\else|\while|\for|\do] {printf("Palavra reservada");}

%%

main (int argc, char **argv)
{
    yylex();
}