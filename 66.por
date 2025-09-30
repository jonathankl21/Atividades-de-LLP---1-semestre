programa
{
	funcao inicio()
	{
		inteiro idade, contador = 0
		inteiro soma_idades = 0
		
		escreva("--- CÁLCULO DA MÉDIA DE IDADES ---\n")
		escreva("Para encerrar, digite a idade 0.\n")

		faca
		{
			escreva("Digite a idade (ou 0 para finalizar): ")
			leia(idade)
			
			se (idade > 0)
			{
				soma_idades = soma_idades + idade
				contador++
			}
			senao se (idade < 0)
			{
				escreva("Idade negativa não é válida, por favor, digite novamente.\n")
			}
			
		} enquanto (idade != 0)

		escreva("\n--- RESULTADOS ---\n")
		
		real media_idades = 0.0
		se (contador > 0)
		{
			media_idades = soma_idades / (real)contador
		}
		
		escreva("Total de idades válidas digitadas: ", contador, "\n")
		escreva("Média das idades digitadas: ", formata_real(media_idades, 2), " anos\n")
	}
}