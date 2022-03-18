#if 1
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

float calc(const float num1, const float num2, const char option)
{
	switch (option)
	{
	case ('+'):
		return num1 + num2;
	
	case ('-'):
		return num1 - num2;
	
	case ('*'):
		return num1 * num2;
	
	case ('/'):
		return num1 / num2;
	}
	return 0;
}

int main(void)
{
	float num1 = 0.0f;
	float num2 = 0.0f;
	char opt;
	float result = 0.0f;

	scanf("%f", &num1);
	scanf("%c", &opt);
	scanf("%f", &num2);

	result = calc(num1, num2, opt);
	printf("결과는 %f 입니다.", result);

	return 0;
}
#endif
