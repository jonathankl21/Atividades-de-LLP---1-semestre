programa
{
	funcao inicio()
	{
		real preco_atual, valor_aumento, valor_imposto, novo_preco
		inteiro categoria
		caracter situacao
		real perc_aumento, perc_imposto

		escreva("Digite o preço atual: ")
		leia(preco_atual)
		escreva("Digite a categoria (1-Limpeza, 2-Alimentação, 3-Vestuário): ")
		leia(categoria)
		escreva("Digite a situação (R-Refrigeração, N-Não refrigeração): ")
		leia(situacao)

		// 1. Cálculo do Aumento
		
		// Determina o percentual de aumento
		se (preco_atual <= 25.0)
		{
			se (categoria == 1) { perc_aumento = 0.05 }
			senao se (categoria == 2) { perc_aumento = 0.08 }
			senao se (categoria == 3) { perc_aumento = 0.10 }
			senao { // Se a categoria for inválida
				escreva("\nERRO: Categoria inválida. Execução terminada.\n")
				retorne
			}
		}
		senao // preco_atual > 25.0
		{
			se (categoria == 1) { perc_aumento = 0.12 }
			senao se (categoria == 2) { perc_aumento = 0.15 }
			senao se (categoria == 3) { perc_aumento = 0.18 }
			senao { // Se a categoria for inválida
				escreva("\nERRO: Categoria inválida. Execução terminada.\n")
				retorne
			}
		}
		valor_aumento = preco_atual * perc_aumento


		// 2. Cálculo do Imposto
		
		logico requisito_1 = (categoria == 2)
		logico requisito_2 = (situacao == 'R' ou situacao == 'r')

		se (requisito_1 ou requisito_2)
		{
			perc_imposto = 0.05 // Pelo menos um requisito
		}
		senao
		{
			perc_imposto = 0.08 // Nenhum requisito
		}

		valor_imposto = preco_atual * perc_imposto


		// 3. Novo Preço
		// Novo preço = Preço + Aumento - Imposto
		novo_preco = preco_atual + valor_aumento - valor_imposto


		// 4. Classificação
		cadeia classificacao
		se (novo_preco <= 50.0)
		{
			classificacao = "Barato"
		}
		senao se (novo_preco <= 120.0) // Entre R$ 50,00 e R$ 120,00
		{
			classificacao = "Normal"
		}
		senao // >= R$ 120,00
		{
			classificacao = "Caro"
		}

		escreva("\nPreço Atual: R$ ", preco_atual, "\n")
		escreva("Aumento (", perc_aumento * 100, "%): R$ ", valor_aumento, "\n")
		escreva("Imposto (", perc_imposto * 100, "%): R$ ", valor_imposto, "\n")
		escreva("NOVO PREÇO: R$ ", novo_preco, "\n")
		escreva("CLASSIFICAÇÃO: ", classificacao, "\n")
	}
}