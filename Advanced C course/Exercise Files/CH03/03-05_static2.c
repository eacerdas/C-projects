#include <stdio.h>



char *repeat(char letter)
{
	static char string[16];
	for(int i=0;i<sizeof(string);i++)
		string[i] = letter;

	return string;
}

int main()
{
	char input;

	printf("Type a character: ");
	scanf("%c",&input);
	printf("%s\n",repeat(input));

	return(0);
}

