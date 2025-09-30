programa
{
	funcao inicio()
	{
		real preco_inicial = 5.0
		real despesa = 200.0
		real preco_ingresso, lucro, lucro_maximo, preco_maximo
		inteiro ingressos, ingressos_maximo

		lucro_maximo = -999999.0 // Inicializa com um valor bem baixo
		preco_maximo = 0.0
		ingressos_maximo = 0

		escreva("------------------------------------------------------------------\n")
		escreva("| Preço Ingresso | Ingressos Vendidos | Lucro Esperado |\n")
		escreva("------------------------------------------------------------------\n")
		
		// O preço varia de R$ 5,00 a R$ 1,00, de R$ 0,50 em R$ 0,50
		preco_ingresso = preco_inicial
		
		// Looping que executa enquanto o preço for maior ou igual a R$ 1,00
		enquanto (preco_ingresso >= 1.0 - 0.001) // Subtrai uma margem de erro para evitar problemas de ponto flutuante
		{
			// Cálculo dos ingressos vendidos (base 120 ingressos para R$ 5,00)
			// A cada R$ 0,50 de diminuição, a venda aumenta em 26 ingressos.
			real diferenca_preco = preco_inicial - preco_ingresso
			inteiro reducoes_de_50_centavos = (inteiro) (diferenca_preco / 0.50 + 0.5) // Arredondamento para evitar problemas de float
			
			ingressos = 120 + (reducoes_de_50_centavos * 26)
			
			// Cálculo do lucro
			lucro = (preco_ingresso * ingressos) - despesa

			// Escreve a linha da tabela
			escreva("| R$ ", formata_real(preco_ingresso, 2), " | ", ingressos, " | R$ ", formata_real(lucro, 2), " |\n")

			// Verifica se é o lucro máximo
			se (lucro > lucro_maximo)
			{
				lucro_maximo = lucro
				preco_maximo = preco_ingresso
				ingressos_maximo = ingressos
			}
			
			// Decrementa o preço
			preco_ingresso = preco_ingresso - 0.50
		}

		escreva("------------------------------------------------------------------\n")
		escreva("\n--- RESULTADO DE LUCRO MÁXIMO ---\n")
		escreva("LUCRO MÁXIMO ESPERADO: R$ ", formata_real(lucro_maximo, 2), "\n")
		escreva("Preço do ingresso para o lucro máximo: R$ ", formata_real(preco_maximo, 2), "\n")
		escreva("Quantidade de ingressos vendidos: ", ingressos_maximo, "\n")
	}
}