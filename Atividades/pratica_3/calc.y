%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <math.h>
    #include "funcs.h"
%}

%token ADD SUB MUL DIV
%token SIN LOG SQRT POW FAT FIB QUA
%token EXIT
%token OP CP
%token NUMBER
%token EOL
%left ADD SUB MUL DIV
%right POW

%%
calclist:
 | calclist exp EOL {printf("= %d\n",$2);}
 | calclist EOL {printf(">");}
 | calclist EXIT {exit(0);}
 ;

 exp: factor
 |exp ADD exp {$$ = $1 + $3;}
 |exp SUB factor {$$ = $1 + $3;}
 ;

 factor: term
 |factor MUL term {$$ = $1 * $3;}
 |factor DIV term {$$ = $1 / $3;}
 |factor POW exp {$$ = pow($1,$3);}
 |factor SIN  {$$ = sin($1);}
 |FAT factor  {$$ = fat($1);}
 |FIB factor  {$$ = fib($1);}
 |factor QUA term{$$ = $1 / $3;}

 term: NUMBER
 | OP exp CP {$$ = $2;}

%%

int main(void){
	printf("> ");
	return yyparse();
}

int yyerror(char *s){
	fprintf(stderr, "error: %s\n" , s);
	return 0;
}