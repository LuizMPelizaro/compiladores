%%
\-?[0-9]+ {printf("Numero inteiro");}

\-?[0-9]+\.[0-9]+ {printf("Numero Real");}
\-?[0-9]+\.[0-9]+\E\-?[0-9]+ {printf("Numero Real");}

[0-9]{3}\.[0-9]{3}\.[0-9]{3}\.[0-9]{2} {printf("CPF");}

[0-9]{2}\.[0-9]{3}\-[0-9]{3} {printf("CEP");}

[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}\-[0-9]{2} {printf("CNPJ");}

[a-zA-Z]+\@[a-zA-Z]+\.[a-zA-Z]+\.?[a-zA-Z] {printf("Email");}

[w]{3}\.[a-z]+\.[a-z]{3}?\.[a-z]{2} {printf("Site");}

%%

main (int argc, char **argv)
{
    yylex();
}