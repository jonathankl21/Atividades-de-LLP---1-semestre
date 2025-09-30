programa
{
	funcao inicio()
	{
		real salario, percentual_aumento, novo_salario

		escreva("Digite o salário do funcionário (R$): ")
		leia(salario)

		se (salario <= 300.0)
		{
			percentual_aumento = 0.35 // 35%
		}
		senao // Acima de R$ 300,00
		{
			percentual_aumento = 0.15 // 15%
		}

		novo_salario = salario * (1 + percentual_aumento)
		
		escreva("\nSalário Atual: R$ ", salario, "\n")
		escreva("Percentual de Aumento: ", percentual_aumento * 100, "%\n")
		escreva("Novo Salário Reajustado: R$ ", novo_salario, "\n")
	}
}