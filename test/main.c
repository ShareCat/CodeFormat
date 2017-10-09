#include <stdint.h>
#include <stdio.h>

void swap(int *a, int *b) {
    *a = *a - *b;
    *b = *a + *b;
    *a = *b - *a;
}

int main(void) {
    int a;
    int b;
    a = 3;
    b = 7;
    printf("a = %d, b = %d", a, b);
    swap(&a, &b);
    printf("a = %d, b = %d", a, b);
    while (1)
        ;
    return 0;
}