programa
{
	funcao inicio()
	{
		inteiro codigo_cliente, tipo_investimento
		real valor_investido, rendimento_mensal, valor_rendimento
		
		real total_investido = 0.0
		real total_juros_pagos = 0.0

		escreva("--- CÁLCULO DE RENDIMENTO DE INVESTIMENTOS ---\n")
		escreva("Para encerrar, digite Código do Cliente menor ou igual a 0.\n")

		faca
		{
			escreva("\nDigite o código do cliente (ou <= 0 para finalizar): ")
			leia(codigo_cliente)
			
			se (codigo_cliente <= 0)
			{
				pare // Finaliza o laço
			}

			escreva("  Tipo de investimento (1=Poupança, 2=Poupança Plus, 3=Renda Fixa): ")
			leia(tipo_investimento)
			escreva("  Valor investido (R$): ")
			leia(valor_investido)
			
			// Determina o rendimento mensal
			escolha (tipo_investimento)
			{
				case 1:
					rendimento_mensal = 0.015 // 1,5%
					pare
				case 2:
					rendimento_mensal = 0.02 // 2%
					pare
				case 3:
					rendimento_mensal = 0.04 // 4%
					pare
				caso contrario:
					rendimento_mensal = -1.0 // Código para erro
					escreva("  ERRO: Tipo de investimento inválido. Dados não considerados no total.\n")
					pare
			}
			
			se (rendimento_mensal != -1.0)
			{
				// Cálculo e acúmulo dos totais
				valor_rendimento = valor_investido * rendimento_mensal
				
				total_investido = total_investido + valor_investido
				total_juros_pagos = total_juros_pagos + valor_rendimento
				
				escreva("  Rendimento mensal obtido: R$ ", formata_real(valor_rendimento, 2), " (", formata_real(rendimento_mensal * 100, 2), "%)\n")
			}
			
		} enquanto (verdadeiro)

		escreva("\n--- RESULTADOS GERAIS DO BANCO ---\n")
		escreva("Total Investido: R$ ", formata_real(total_investido, 2), "\n")
		escreva("Total de Juros Pagos (Rendimento): R$ ", formata_real(total_juros_pagos, 2), "\n")
	}
}