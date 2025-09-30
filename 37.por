programa
{
	funcao inicio()
	{
		real salario_bruto, gratificacao, imposto, salario_a_receber

		escreva("Digite o salário bruto do funcionário (R$): ")
		leia(salario_bruto)

		// 1. Cálculo da Gratificação
		se (salario_bruto <= 350.0)
		{
			gratificacao = 100.0
		}
		senao se (salario_bruto <= 600.0)
		{
			gratificacao = 75.0
		}
		senao se (salario_bruto <= 900.0)
		{
			gratificacao = 50.0
		}
		senao // Acima de R$ 900,00
		{
			gratificacao = 35.0
		}

		// 2. Cálculo do Imposto (7% sobre o salário bruto)
		imposto = salario_bruto * 0.07

		// 3. Cálculo do Salário a Receber
		// Salário Bruto + Gratificação - Imposto
		salario_a_receber = salario_bruto + gratificacao - imposto

		escreva("\nSalário Bruto: R$ ", salario_bruto, "\n")
		escreva("Gratificação Recebida: R$ ", gratificacao, "\n")
		escreva("Imposto Descontado (7%): R$ ", imposto, "\n")
		escreva("VALOR A RECEBER: R$ ", salario_a_receber, "\n")
	}
}