#include <stdio.h>
void main() {
	int num, result;
	printf("Number: ");
	scanf("%d", &num);
	result = factorial(num);
	printf("Factorial: %d\n", result);
}
