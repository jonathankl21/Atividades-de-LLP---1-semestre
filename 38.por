programa
{
	funcao inicio()
	{
		real preco_atual, percentual_aumento, valor_aumento, novo_preco
		cadeia classificacao

		escreva("Digite o preço atual do produto (R$): ")
		leia(preco_atual)

		// TABELA 1 — PERCENTUAL DE AUMENTO
		se (preco_atual <= 50.0)
		{
			percentual_aumento = 0.05 // 5%
		}
		senao se (preco_atual <= 100.0) // Entre R$ 50,00 e R$ 100,00
		{
			percentual_aumento = 0.10 // 10%
		}
		senao // Acima de R$ 100,00
		{
			percentual_aumento = 0.15 // 15%
		}

		valor_aumento = preco_atual * percentual_aumento
		novo_preco = preco_atual + valor_aumento
		
		// TABELA 2 — CLASSIFICAÇÕES
		se (novo_preco <= 80.0)
		{
			classificacao = "Barato"
		}
		senao se (novo_preco <= 120.0) // Entre R$ 80,00 e R$ 120,00 (inclusive)
		{
			classificacao = "Normal"
		}
		senao se (novo_preco <= 200.0) // Entre R$ 120,00 e R$ 200,00 (inclusive)
		{
			classificacao = "Caro"
		}
		senao // Maior que R$ 200,00
		{
			classificacao = "Muito caro"
		}

		escreva("\nPreço Atual: R$ ", preco_atual, "\n")
		escreva("Aumento (", percentual_aumento * 100, "%): R$ ", valor_aumento, "\n")
		escreva("NOVO PREÇO: R$ ", novo_preco, "\n")
		escreva("CLASSIFICAÇÃO: ", classificacao, "\n")
	}
}