#include <stdio.h>
int main() {
int number;
printf("Введите число: ");
scanf("%d", &number);
if (number > 0) {
    printf("Число больше нуля.\n");
} else if (number < 0) {
    printf("Число меньше нуля.\n");
} else {
    printf("Число равно нулю.\n");
}

return 0;
}
