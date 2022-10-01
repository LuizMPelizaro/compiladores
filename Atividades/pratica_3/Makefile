PROG = calc

run: compile
	./${PROG}.exe

compile: clear  parser scanner
	gcc -o ${PROG}.exe ${PROG}.tab.c ${PROG}.yy.c -std=c89 -lfl -lm

parser:
	bison -d ${PROG}.y

scanner:
	flex -o ${PROG}.yy.c ${PROG}.l

clear:
	rm -f *.exe *.output *.tab.* *.yy.c
