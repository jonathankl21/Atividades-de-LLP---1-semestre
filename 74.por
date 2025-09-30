programa
{
	funcao inicio()
	{
		inteiro valor
		inteiro maior = -1 // Inicializa com um valor que será facilmente substituído
		inteiro menor = 99999999 // Inicializa com um valor grande
		logico primeiro_valor = verdadeiro

		escreva("--- MAIOR E MENOR VALOR DO CONJUNTO ---\n")
		escreva("Digite um valor inteiro e positivo (ou 0 para finalizar).\n")

		faca
		{
			escreva("Digite um valor: ")
			leia(valor)
			
			se (valor == 0)
			{
				pare // Finaliza o laço
			}
			
			se (valor < 0)
			{
				escreva("Valor negativo digitado. Apenas valores inteiros e POSITIVOS são aceitos.\n")
				escreva("Este valor não entrará nos cálculos.\n")
			}
			senao // Valor positivo
			{
				// Configura o primeiro valor como maior e menor
				se (primeiro_valor)
				{
					maior = valor
					menor = valor
					primeiro_valor = falso
				}
				senao
				{
					se (valor > maior)
					{
						maior = valor
					}
					se (valor < menor)
					{
						menor = valor
					}
				}
			}
			
		} enquanto (verdadeiro)

		escreva("\n--- RESULTADOS FINAIS ---\n")
		
		se (primeiro_valor == falso) // Verifica se algum valor positivo foi digitado
		{
			escreva("Maior valor do conjunto: ", maior, "\n")
			escreva("Menor valor do conjunto: ", menor, "\n")
		}
		senao
		{
			escreva("Nenhum valor positivo válido foi digitado para o cálculo.\n")
		}
	}
}