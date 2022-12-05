#include "funcs.h"

int fat(int x) {
    int fat;
    if (x == 0) {
        return 1;
    } else {
        for (fat = 1; x > 1; x = x - 1)
            fat = fat * x;
    }
    return fat;
}

int fib(int n) {
    int i, fib1 = 1, fib2 = 1, soma;
    for (i = 3; i <= n; i = i + 1) {
        soma = fib1 + fib2;
        fib1 = fib2;
        fib2 = soma;
    }
    return fib2;
}