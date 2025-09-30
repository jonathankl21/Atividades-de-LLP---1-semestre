programa
{
	funcao inicio()
	{
		real custo_fabrica, perc_distribuidor, perc_impostos, custo_distribuidor, custo_impostos, preco_consumidor

		escreva("Digite o custo de fábrica do carro (R$): ")
		leia(custo_fabrica)

		se (custo_fabrica <= 12000.0)
		{
			perc_distribuidor = 0.05 // 5%
			perc_impostos = 0.0 // Isento
		}
		senao se (custo_fabrica <= 25000.0) // Entre R$ 12.000,00 e R$ 25.000,00
		{
			perc_distribuidor = 0.10 // 10%
			perc_impostos = 0.15 // 15%
		}
		senao // Acima de R$ 25.000,00
		{
			perc_distribuidor = 0.15 // 15%
			perc_impostos = 0.20 // 20%
		}

		custo_distribuidor = custo_fabrica * perc_distribuidor
		custo_impostos = custo_fabrica * perc_impostos
		preco_consumidor = custo_fabrica + custo_distribuidor + custo_impostos

		escreva("\nCusto de Fábrica: R$ ", custo_fabrica, "\n")
		escreva("Custo do Distribuidor (", perc_distribuidor * 100, "%): R$ ", custo_distribuidor, "\n")
		escreva("Custo dos Impostos (", perc_impostos * 100, "%): R$ ", custo_impostos, "\n")
		escreva("PREÇO FINAL AO CONSUMIDOR: R$ ", preco_consumidor, "\n")
	}
}