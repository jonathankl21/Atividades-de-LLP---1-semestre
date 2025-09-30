programa
{
	funcao inicio()
	{
		real valor_carro, preco_final_vista, preco_final_prazo, valor_parcela, perc_acrescimo
		inteiro parcelas[10] = {6, 12, 18, 24, 30, 36, 42, 48, 54, 60}
		real acrescimos[10] = {0.03, 0.06, 0.09, 0.12, 0.15, 0.18, 0.21, 0.24, 0.27, 0.30} // 3% a 30%

		escreva("Digite o valor do carro (R$): ")
		leia(valor_carro)

		// Preço à vista (desconto de 20%)
		preco_final_vista = valor_carro * 0.80

		escreva("\n--- TABELA DE PREÇOS E CONDIÇÕES ---\n")
		escreva("Preço à vista (20% desconto): R$ ", formata_real(preco_final_vista, 2), "\n")
		escreva("-------------------------------------------------------------------\n")
		escreva("| Quantidade de Parcelas | Percentual de Acréscimo | Preço Final | Valor da Parcela |\n")
		escreva("-------------------------------------------------------------------\n")

		para (inteiro i = 0; i < 10; i++)
		{
			perc_acrescimo = acrescimos[i]
			
			// Preço final para compra a prazo
			preco_final_prazo = valor_carro * (1 + perc_acrescimo)
			
			// Valor da parcela
			valor_parcela = preco_final_prazo / parcelas[i]
			
			escreva("| ", parcelas[i], "x | ", formata_real(perc_acrescimo * 100, 2), "% | R$ ", formata_real(preco_final_prazo, 2), " | R$ ", formata_real(valor_parcela, 2), " |\n")
		}
		escreva("-------------------------------------------------------------------\n")
	}
}