programa
{
	funcao inicio()
	{
		real horas_extras, horas_falta, h_minutos, premio
		
		escreva("Digite o número de horas extras trabalhadas: ")
		leia(horas_extras)
		escreva("Digite o número de horas de falta ao trabalho: ")
		leia(horas_falta)

		// H = número de horas extras – (2/3 * (número de horas falta))
		// O resultado é em horas.
		real H = horas_extras - ((2.0/3.0) * horas_falta)
		
		// Converter H para minutos (h (MINUTOS))
		h_minutos = H * 60.0

		escreva("\nHoras convertidas para minutos (H): ", h_minutos, "\n")

		se (h_minutos >= 2400.0)
		{
			premio = 500.0
		}
		senao se (h_minutos >= 1800.0) // 1.800 a 2.400 (exclusivo)
		{
			premio = 400.0
		}
		senao se (h_minutos >= 1200.0) // 1.200 a 1.800 (exclusivo)
		{
			premio = 300.0
		}
		senao se (h_minutos >= 600.0) // 600 a 1.200 (exclusivo)
		{
			premio = 200.0
		}
		senao // < 600
		{
			premio = 100.0
		}

		escreva("VALOR DO PRÊMIO DE NATAL: R$ ", premio, "\n")
	}
}