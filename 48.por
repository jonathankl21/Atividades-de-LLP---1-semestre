programa
{
	funcao inicio()
	{
		inteiro codigo, quantidade
		real preco_unitario, preco_total, percentual_desconto, valor_desconto, preco_final

		escreva("Digite o código do produto comprado: ")
		leia(codigo)
		escreva("Digite a quantidade comprada: ")
		leia(quantidade)
		
		// 1. Preço Unitário (Tabela I)
		se (codigo >= 1 e codigo <= 10)
		{
			preco_unitario = 10.0
		}
		senao se (codigo >= 11 e codigo <= 20)
		{
			preco_unitario = 15.0
		}
		senao se (codigo >= 21 e codigo <= 30)
		{
			preco_unitario = 20.0
		}
		senao se (codigo >= 31 e codigo <= 40)
		{
			preco_unitario = 30.0
		}
		senao
		{
			escreva("\nERRO: Código de produto inválido. Execução terminada.\n")
			retorne
		}

		// 2. Preço Total da Nota
		preco_total = preco_unitario * quantidade

		// 3. Valor do Desconto (Tabela II)
		se (preco_total <= 250.0)
		{
			percentual_desconto = 0.05 // 5%
		}
		senao se (preco_total <= 500.0) // Entre R$ 250,00 e R$ 500,00
		{
			percentual_desconto = 0.10 // 10%
		}
		senao // Acima de R$ 500,00
		{
			percentual_desconto = 0.15 // 15%
		}

		valor_desconto = preco_total * percentual_desconto

		// 4. Preço Final da Nota
		preco_final = preco_total - valor_desconto

		escreva("\n--- DETALHES DA NOTA ---\n")
		escreva("Preço Unitário: R$ ", preco_unitario, "\n")
		escreva("PREÇO TOTAL DA NOTA: R$ ", preco_total, "\n")
		escreva("Valor do Desconto (", percentual_desconto * 100, "%): R$ ", valor_desconto, "\n")
		escreva("PREÇO FINAL DA NOTA: R$ ", preco_final, "\n")
	}
}