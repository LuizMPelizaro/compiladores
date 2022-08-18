#include "stdlib.h"
#include "stdio.h"


int main(__attribute__((unused)) int argc, char *argv[]) {
    FILE *fp;
    char character, line_break = '\n', space = ' ';
    int number_character = 0;
    int line = 1;
    int words = 0;

    if ((fp = fopen((const char *) argv[1], "rw")) == NULL) {
        printf("ERRO NA ABERTURA DE ARQUIVO\n");
    } else
        printf("ABERTO COM SUCESSO\n");

    while ((character = fgetc(fp)) != EOF) {

        if (words == 0)
            words++;

        if (character != space && character != line_break)
            number_character++;

        if (character == line_break || character == EOF)
            line++;

        if (character == space || character == line_break || character == EOF)
            words++;

    }

    fclose(fp);

    printf("Existem %d letras no arquivo \n", number_character);
    printf("Existem %d linha no arquivo \n", line);
    printf("Existem %d palavras no arquivo \n", words);

    return 0;
}
