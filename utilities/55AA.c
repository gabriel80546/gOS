#include<stdio.h>







int main(int argc, char *argv[])
{
	if(argc <= 2)
	{
		return 0;
	}
	
	char* codfonte = argv[1];
	char* binario = argv[2];


	FILE *arquivo;
	FILE *resultado;
	
	arquivo = fopen(codfonte,"r");
	resultado = fopen(binario,"wb");
	

	int contador = 0;

	char caracter;

	int saida;

	int flag = 1;

	while(1)
	{
		saida = fscanf(arquivo,"%c",&caracter);

		if(saida == EOF)
		{
			break;
		}
		if(caracter == '/')
		{
			if(flag == 1)
			{
				flag=2;
			}
			else if(flag == 2)
			{
				flag = 3;
			}
			else if(flag == 3)
			{
				flag = 1;
			}
		}

		if(flag==1)
		{
			contador++;
			printf("%c\n",caracter);
		}
	}

	printf("%d\n",contador);

	fclose(arquivo);
	fclose(resultado);
	return 0;
}



























