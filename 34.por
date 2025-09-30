programa
{
	funcao inicio()
	{
		real saldo_medio, percentual_credito, valor_credito

		escreva("Digite o saldo médio do cliente no último ano (R$): ")
		leia(saldo_medio)

		se (saldo_medio > 400.0)
		{
			percentual_credito = 0.30 // 30%
		}
		senao se (saldo_medio >= 300.0) // Entre R$ 300,00 e R$ 400,00 (inclusive 400,00)
		{
			percentual_credito = 0.25 // 25%
		}
		senao se (saldo_medio >= 200.0) // Entre R$ 200,00 e R$ 300,00 (inclusive 300,00)
		{
			percentual_credito = 0.20 // 20%
		}
		senao // Até R$ 200,00 (inclusive)
		{
			percentual_credito = 0.10 // 10%
		}

		valor_credito = saldo_medio * percentual_credito

		escreva("\nSaldo Médio: R$ ", saldo_medio, "\n")
		escreva("Valor do Crédito: R$ ", valor_credito, "\n")
		escreva("Percentual aplicado: ", percentual_credito * 100, "%\n")
	}
}