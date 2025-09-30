programa
{
	funcao inicio()
	{
		caracter tipo_acao
		real preco_compra, preco_venda, lucro_acao
		
		inteiro cont_lucro_maior_1000 = 0
		inteiro cont_lucro_menor_200 = 0
		real lucro_total = 0.0

		escreva("--- ANÁLISE DE AÇÕES (FINALIZA COM TIPO 'F') ---\n")

		faca
		{
			escreva("\nTipo da ação (letra ou 'F' para finalizar): ")
			leia(tipo_acao)
			
			tipo_acao = caracter_maiusculo(tipo_acao)
			
			se (tipo_acao == 'F')
			{
				pare // Finaliza o laço
			}

			escreva("  Preço de compra: R$ ")
			leia(preco_compra)
			escreva("  Preço de venda: R$ ")
			leia(preco_venda)
			
			// a) Lucro de cada ação
			lucro_acao = preco_venda - preco_compra
			
			escreva("  Lucro da ação ", tipo_acao, ": R$ ", formata_real(lucro_acao, 2), "\n")

			// b) Quantidade de ações com lucro superior a R$ 1.000,00
			se (lucro_acao > 1000.0)
			{
				cont_lucro_maior_1000++
			}
			
			// c) Quantidade de ações com lucro inferior a R$ 200,00
			se (lucro_acao < 200.0)
			{
				cont_lucro_menor_200++
			}
			
			// d) Lucro total da empresa
			lucro_total = lucro_total + lucro_acao
			
		} enquanto (verdadeiro)

		escreva("\n--- RESULTADOS FINAIS DA EMPRESA ---\n")
		escreva("b) Ações com lucro > R$ 1.000,00: ", cont_lucro_maior_1000, "\n")
		escreva("c) Ações com lucro < R$ 200,00: ", cont_lucro_menor_200, "\n")
		escreva("d) Lucro total da empresa: R$ ", formata_real(lucro_total, 2), "\n")
	}
}