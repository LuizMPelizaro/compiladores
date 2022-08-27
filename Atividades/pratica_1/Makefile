comp: comp_flex
	gcc lex.yy.c -lfl

comp_flex: clear
	flex  main.l

clear:
	rm -f lex.yy.c a.out