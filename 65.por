programa
{
	funcao inicio()
	{
		caracter sexo, resposta
		inteiro i
		
		inteiro cont_total = 10
		
		inteiro cont_sim = 0
		inteiro cont_nao = 0
		inteiro cont_mulheres_sim = 0
		
		inteiro cont_homens = 0
		inteiro cont_homens_nao = 0

		escreva("--- PESQUISA DE SATISFAÇÃO (10 PESSOAS) ---\n")
		escreva("Respostas: S-sim; N-não.\n")
		escreva("Sexo: M-masculino; F-feminino.\n")

		para (i = 1; i <= cont_total; i++)
		{
			escreva("\nENTREVISTADO ", i, ":\n")
			escreva("  Sexo (M/F): ")
			leia(sexo)
			escreva("  Resposta (S/N): ")
			leia(resposta)
			
			sexo = caracter_maiusculo(sexo)
			resposta = caracter_maiusculo(resposta)
			
			// a) Número de pessoas que responderam sim
			se (resposta == 'S')
			{
				cont_sim++
			}
			
			// b) Número de pessoas que responderam não
			se (resposta == 'N')
			{
				cont_nao++
			}
			
			// c) Número de mulheres que responderam sim
			se (sexo == 'F' e resposta == 'S')
			{
				cont_mulheres_sim++
			}
			
			// d) Dados para percentagem de homens que responderam não
			se (sexo == 'M')
			{
				cont_homens++
				se (resposta == 'N')
				{
					cont_homens_nao++
				}
			}
		}

		escreva("\n--- RESULTADOS DA PESQUISA ---\n")
		
		// a) Sim
		escreva("a) Número de pessoas que responderam SIM: ", cont_sim, "\n")
		
		// b) Não
		escreva("b) Número de pessoas que responderam NÃO: ", cont_nao, "\n")
		
		// c) Mulheres Sim
		escreva("c) Número de mulheres que responderam SIM: ", cont_mulheres_sim, "\n")
		
		// d) Porcentagem de homens que responderam não
		real perc_homens_nao = 0.0
		se (cont_homens > 0)
		{
			perc_homens_nao = (cont_homens_nao / (real)cont_homens) * 100.0
		}
		escreva("d) Porcentagem de homens que responderam NÃO: ", formata_real(perc_homens_nao, 2), "%\n")
	}
}