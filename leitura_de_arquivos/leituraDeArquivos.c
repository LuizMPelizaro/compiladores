#include "stdlib.h"
#include "stdio.h"



int main(__attribute__((unused)) int argc, char *argv[]) {
    FILE *fp;
    char c, quebra_linha = '\n', espaco = ' ';
    int n = 0;
    int l = 1;
    int p = 0;

    if ((fp = fopen((const char *) argv[1], "rw")) == NULL) {
        printf("ERRO NA ABERTURA DE ARQUIVO\n");
    } else
        printf("ABERTO COM SUCESSO\n");

    while ((c = fgetc(fp)) != EOF) {
        if (c != espaco && c != quebra_linha)
            n++;
        if (c == quebra_linha || c == EOF) {
            l++;
        }
        if (c == espaco || c == quebra_linha) {
            p++;
        }
    }
    fclose(fp);

    printf("Existem %d letras no arquivo \n", n);
    printf("Existem %d linha no arquivo \n", l);
    printf("Existem %d palavras no arquivo \n", p);

    return 0;
}
