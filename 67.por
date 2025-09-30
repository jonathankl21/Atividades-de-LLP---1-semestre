programa
{
	funcao inicio()
	{
		inteiro canal, pessoas
		
		inteiro total_pessoas = 0
		inteiro audi_canal4 = 0
		inteiro audi_canal5 = 0
		inteiro audi_canal7 = 0
		inteiro audi_canal12 = 0
		
		escreva("--- PESQUISA DE AUDIÊNCIA DE TV ---\n")
		escreva("Canais válidos: 4, 5, 7, 12.\n")
		escreva("Para encerrar a pesquisa, digite o número do canal 0.\n")

		faca
		{
			escreva("\nDigite o número do canal (4, 5, 7, 12 ou 0 p/ finalizar): ")
			leia(canal)
			
			se (canal == 0)
			{
				pare // Encerra o laço
			}
			
			se (canal == 4 ou canal == 5 ou canal == 7 ou canal == 12)
			{
				escreva("Número de pessoas assistindo a este canal: ")
				leia(pessoas)

				total_pessoas = total_pessoas + pessoas
				
				escolha (canal)
				{
					caso 4:
						audi_canal4 = audi_canal4 + pessoas
						pare
					caso 5:
						audi_canal5 = audi_canal5 + pessoas
						pare
					caso 7:
						audi_canal7 = audi_canal7 + pessoas
						pare
					caso 12:
						audi_canal12 = audi_canal12 + pessoas
						pare
				}
			}
			senao
			{
				escreva("Canal inválido digitado. Tente novamente.\n")
			}
			
		} enquanto (verdadeiro)

		escreva("\n--- RESULTADOS FINAIS ---\n")
		escreva("Total de pessoas que estavam assistindo TV: ", total_pessoas, "\n")
		
		se (total_pessoas > 0)
		{
			escreva("Porcentagem de audiência de cada canal:\n")
			escreva("Canal 4: ", formata_real((audi_canal4 / (real)total_pessoas) * 100.0, 2), "%\n")
			escreva("Canal 5: ", formata_real((audi_canal5 / (real)total_pessoas) * 100.0, 2), "%\n")
			escreva("Canal 7: ", formata_real((audi_canal7 / (real)total_pessoas) * 100.0, 2), "%\n")
			escreva("Canal 12: ", formata_real((audi_canal12 / (real)total_pessoas) * 100.0, 2), "%\n")
		}
		senao
		{
			escreva("Nenhum dado válido de audiência foi registrado.\n")
		}
	}
}