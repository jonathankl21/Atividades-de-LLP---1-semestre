programa
{
	funcao inicio()
	{
		inteiro opcao
		
		faca
		{
			escreva("\n--- Menu de Opções Financeiras ---\n")
			escreva("1. Novo salário\n")
			escreva("2. Férias\n")
			escreva("3. Décimo terceiro\n")
			escreva("4. Sair\n")
			escreva("Digite a opção desejada: ")
			leia(opcao)
			
			escolha (opcao)
			{
				caso 1:
					// 1. Novo salário
					real salario_atual, perc_aumento, novo_salario
					escreva("  Digite o salário atual (R$): ")
					leia(salario_atual)
					
					se (salario_atual <= 210.0)
					{
						perc_aumento = 0.15
					}
					senao se (salario_atual <= 600.0) // 210,00 a 600,00
					{
						perc_aumento = 0.10
					}
					senao // Acima de 600,00
					{
						perc_aumento = 0.05
					}
					
					novo_salario = salario_atual * (1.0 + perc_aumento)
					
					escreva("  Aumento de: ", formata_real(perc_aumento * 100, 2), "%\n")
					escreva("  Novo Salário: R$ ", formata_real(novo_salario, 2), "\n")
					pare
					
				caso 2:
					// 2. Férias
					real salario_ferias, valor_ferias
					escreva("  Digite o salário para cálculo das férias (R$): ")
					leia(salario_ferias)
					
					// Férias = Salário + 1/3 do Salário
					valor_ferias = salario_ferias + (salario_ferias / 3.0)
					escreva("  Valor das Férias: R$ ", formata_real(valor_ferias, 2), "\n")
					pare
					
				case 3:
					// 3. Décimo terceiro
					real salario_13, valor_13
					inteiro meses_trabalho
					
					escreva("  Digite o salário para cálculo do 13º (R$): ")
					leia(salario_13)
					escreva("  Digite o número de meses trabalhados (máx 12): ")
					leia(meses_trabalho)
					
					// Restrição de meses
					se (meses_trabalho > 12) {
						meses_trabalho = 12
						escreva("  Aviso: Meses limitados a 12 para o cálculo.\n")
					}
					
					// 13º = Salário * (Meses / 12)
					valor_13 = salario_13 * (meses_trabalho / 12.0)
					escreva("  Valor do Décimo Terceiro: R$ ", formata_real(valor_13, 2), "\n")
					pare
					
				case 4:
					escreva("Saindo do programa. Até logo!\n")
					pare
					
				caso contrario:
					escreva("Opção inválida. Por favor, escolha 1, 2, 3 ou 4.\n")
					pare
			}
		} enquanto (opcao != 4)
	}
}