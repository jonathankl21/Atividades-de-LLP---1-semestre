programa
{
	funcao inicio()
	{
		real preco_atual, percentual_desconto, valor_desconto, novo_preco
		inteiro codigo

		escreva("Digite o preço atual do produto (R$): ")
		leia(preco_atual)
		escreva("Digite o código do produto: ")
		leia(codigo) // O código não é usado no cálculo do desconto, mas é lido conforme o problema.

		se (preco_atual <= 30.0)
		{
			percentual_desconto = 0.0 // Sem desconto
		}
		senao se (preco_atual <= 100.0) // Entre R$ 30,00 e R$ 100,00
		{
			percentual_desconto = 0.10 // 10%
		}
		senao // Acima de R$ 100,00
		{
			percentual_desconto = 0.15 // 15%
		}

		valor_desconto = preco_atual * percentual_desconto
		novo_preco = preco_atual - valor_desconto

		escreva("\nPreço Atual: R$ ", preco_atual, "\n")
		escreva("Percentual de Desconto: ", percentual_desconto * 100, "%\n")
		escreva("VALOR DO DESCONTO: R$ ", valor_desconto, "\n")
		escreva("NOVO PREÇO: R$ ", novo_preco, "\n")
	}
}