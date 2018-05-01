#include<stdio.h>
#include<stdlib.h>

int main()
{
	char* recebimento = malloc(10240);
	printf("Diga a string\n");
	int quantos = scanf("%s",recebimento);

	printf("quatos = %i\n",quantos);

	int i;

	i = 0;
	while(*(recebimento + i) != '\0')
	{
		printf("%c = %X\n",*(recebimento + i) , *(recebimento + i));
		i++;
	}

	free(recebimento);

	return 0;
}
