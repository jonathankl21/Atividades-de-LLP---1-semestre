programa
{
	funcao inicio()
	{
		inteiro tipo_investimento
		real valor_investido, rendimento_mensal, valor_corrigido

		escreva("Digite o valor do investimento (R$): ")
		leia(valor_investido)
		
		escreva("\nEscolha o tipo de investimento:\n")
		escreva("1 - Poupança (3%)\n")
		escreva("2 - Fundos de renda fixa (4%)\n")
		escreva("Tipo: ")
		leia(tipo_investimento)

		se (tipo_investimento == 1)
		{
			rendimento_mensal = 0.03 // 3%
			escreva("\nTipo de Investimento: Poupança\n")
		}
		senao se (tipo_investimento == 2)
		{
			rendimento_mensal = 0.04 // 4%
			escreva("\nTipo de Investimento: Fundos de renda fixa\n")
		}
		senao
		{
			escreva("\nERRO: Tipo de investimento inválido. Execução terminada.\n")
			retorne // Termina o programa
		}

		valor_corrigido = valor_investido * (1 + rendimento_mensal)

		escreva("Valor Investido: R$ ", valor_investido, "\n")
		escreva("Rendimento Mensal: ", rendimento_mensal * 100, "%\n")
		escreva("VALOR CORRIGIDO APÓS UM MÊS: R$ ", valor_corrigido, "\n")
	}
}