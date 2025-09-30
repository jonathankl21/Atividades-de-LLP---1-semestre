programa
{
	funcao inicio()
	{
		real salario, salario_reajustado

		escreva("Digite o salário do funcionário (R$): ")
		leia(salario)

		se (salario < 500.0)
		{
			salario_reajustado = salario * 1.30 // 30% de aumento
			escreva("\nSALÁRIO REAJUSTADO (30% de aumento): R$ ", salario_reajustado, "\n")
		}
		senao
		{
			escreva("\nO funcionário não tem direito ao aumento de 30%.\n")
			escreva("Salário atual: R$ ", salario, "\n")
		}
	}
}