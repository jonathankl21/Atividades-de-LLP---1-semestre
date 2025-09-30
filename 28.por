programa
{
	funcao inicio()
	{
		real num1, num2

		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)

		se (num1 < num2)
		{
			escreva("\nO menor número é: ", num1, "\n")
		}
		senao se (num2 < num1)
		{
			escreva("\nO menor número é: ", num2, "\n")
		}
		senao
		{
			escreva("\nOs números são iguais.\n")
		}
	}
}