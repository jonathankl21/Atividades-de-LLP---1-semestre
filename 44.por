programa
{
	funcao inicio()
	{
		real altura, peso_ideal
		caracter sexo

		escreva("Digite a altura (em metros): ")
		leia(altura)
		
		escreva("Digite o sexo (H para homem, M para mulher): ")
		leia(sexo)

		se (sexo == 'h' ou sexo == 'H')
		{
			// Para homens: (72.7 * h) – 58.
			peso_ideal = (72.7 * altura) - 58.0
			escreva("\nSexo: Homem\n")
		}
		senao se (sexo == 'm' ou sexo == 'M')
		{
			// Para mulheres: (62.1 * h) – 44.7.
			peso_ideal = (62.1 * altura) - 44.7
			escreva("\nSexo: Mulher\n")
		}
		senao
		{
			escreva("\nERRO: Sexo inválido digitado. Execução terminada.\n")
			retorne
		}

		escreva("Seu peso ideal é: ", peso_ideal, " kg\n")
	}
}