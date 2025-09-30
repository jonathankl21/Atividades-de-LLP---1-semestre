programa
{
	funcao inicio()
	{
		inteiro numero, multiplicador, resultado

		para (numero = 1; numero <= 10; numero++)
		{
			escreva("\n--- TABUADA DO ", numero, " ---\n")
			para (multiplicador = 0; multiplicador <= 10; multiplicador++)
			{
				resultado = numero * multiplicador
				escreva(numero, " × ", multiplicador, " = ", resultado, "\n")
			}
		}
	}
}