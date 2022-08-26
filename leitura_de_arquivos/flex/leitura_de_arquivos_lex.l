%{
int words = 0;
int lines = 0;
int chars = 0;
%}

%%

[a-zA-Z]+ {words++; chars += strlen(yytext);}
\n        {chars++; lines++;}
.         {chars++;}

%%

main (int argc, char **argv)
{
    yylex();
    printf("linhas:%8d \npalavras: %8d\ncaracteres:%8d\n",lines,words,chars);
}