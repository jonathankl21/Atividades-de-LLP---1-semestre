programa
{
	funcao inicio()
	{
		real salario_atual, percentual_aumento, valor_aumento, novo_salario

		escreva("Digite o salário atual do funcionário (R$): ")
		leia(salario_atual)

		se (salario_atual <= 300.0)
		{
			percentual_aumento = 0.15 // 15%
		}
		senao se (salario_atual <= 600.0) // Entre R$ 300,00 e R$ 600,00
		{
			percentual_aumento = 0.10 // 10%
		}
		senao se (salario_atual <= 900.0) // Entre R$ 600,00 e R$ 900,00
		{
			percentual_aumento = 0.05 // 5%
		}
		senao // Acima de R$ 900,00
		{
			percentual_aumento = 0.0 // 0%
		}

		valor_aumento = salario_atual * percentual_aumento
		novo_salario = salario_atual + valor_aumento

		escreva("\nSalário Atual: R$ ", salario_atual, "\n")
		escreva("Valor do Aumento (", percentual_aumento * 100, "%): R$ ", valor_aumento, "\n")
		escreva("Novo Salário: R$ ", novo_salario, "\n")
	}
}