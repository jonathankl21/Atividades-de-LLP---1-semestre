programa
{
	funcao inicio()
	{
		real salario_atual, percentual_aumento, novo_salario

		escreva("Digite o salário do funcionário (R$): ")
		leia(salario_atual)

		se (salario_atual <= 300.0)
		{
			percentual_aumento = 0.50 // 50%
		}
		senao se (salario_atual <= 500.0)
		{
			percentual_aumento = 0.40 // 40%
		}
		senao se (salario_atual <= 700.0)
		{
			percentual_aumento = 0.30 // 30%
		}
		senao se (salario_atual <= 800.0)
		{
			percentual_aumento = 0.20 // 20%
		}
		senao se (salario_atual <= 1000.0)
		{
			percentual_aumento = 0.10 // 10%
		}
		senao // Acima de R$ 1.000,00
		{
			percentual_aumento = 0.05 // 5%
		}

		novo_salario = salario_atual * (1 + percentual_aumento)

		escreva("\nSalário Atual: R$ ", salario_atual, "\n")
		escreva("Percentual de Aumento: ", percentual_aumento * 100, "%\n")
		escreva("Novo Salário: R$ ", novo_salario, "\n")
	}
}