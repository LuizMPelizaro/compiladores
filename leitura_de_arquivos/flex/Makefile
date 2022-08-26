comp: comp_flex
	gcc lex.yy.c -lfl

comp_flex: clear
	flex  leitura_de_arquivos_lex.l

clear:
	rm -f lex.yy.c a.out