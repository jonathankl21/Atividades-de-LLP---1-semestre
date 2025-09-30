programa
{
	funcao inicio()
	{
		caracter codigo
		real valor_transacao
		real total_vista = 0.0
		real total_prazo = 0.0
		real total_compras
		real primeira_prestacao_prazo

		escreva("--- REGISTRO DE 15 TRANSAÇÕES ---\n")

		para (inteiro i = 1; i <= 15; i++)
		{
			escreva("\nTransação ", i, ":\n")
			escreva("  Digite o valor (R$): ")
			leia(valor_transacao)
			escreva("  Digite o código (V para à vista, P para a prazo): ")
			leia(codigo)

			se (codigo == 'V' ou codigo == 'v')
			{
				total_vista = total_vista + valor_transacao
			}
			senao se (codigo == 'P' ou codigo == 'p')
			{
				total_prazo = total_prazo + valor_transacao
			}
			senao
			{
				escreva("  ATENÇÃO: Código inválido. Transação não contabilizada.\n")
				i-- // Volta o contador para repetir a transação inválida
			}
		}

		total_compras = total_vista + total_prazo
		primeira_prestacao_prazo = total_prazo / 3.0 // Pago em três vezes

		escreva("\n--- RESULTADOS FINAIS ---\n")
		escreva("1. Valor total das compras à vista: R$ ", formata_real(total_vista, 2), "\n")
		escreva("2. Valor total das compras a prazo: R$ ", formata_real(total_prazo, 2), "\n")
		escreva("3. Valor total das compras efetuadas: R$ ", formata_real(total_compras, 2), "\n")
		escreva("4. Valor da primeira prestação a prazo: R$ ", formata_real(primeira_prestacao_prazo, 2), "\n")
	}
}