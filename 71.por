programa
{
	funcao inicio()
	{
		inteiro voto
		
		inteiro cont_candidato1 = 0
		inteiro cont_candidato2 = 0
		inteiro cont_candidato3 = 0
		inteiro cont_candidato4 = 0
		inteiro cont_nulo = 0 // Código 5
		inteiro cont_branco = 0 // Código 6
		inteiro total_votos = 0

		escreva("--- ELEIÇÃO PRESIDENCIAL ---\n")
		escreva("Códigos: 1-4 (Candidatos), 5 (Nulo), 6 (Branco), 0 (Finalizar)\n")

		faca
		{
			escreva("Digite seu voto (código): ")
			leia(voto)
			
			se (voto == 0)
			{
				pare // Finaliza o laço
			}

			se (voto >= 1 e voto <= 6)
			{
				total_votos++
				
				escolha (voto)
				{
					caso 1: cont_candidato1++; pare
					caso 2: cont_candidato2++; pare
					caso 3: cont_candidato3++; pare
					caso 4: cont_candidato4++; pare
					case 5: cont_nulo++; pare
					case 6: cont_branco++; pare
				}
			}
			senao
			{
				escreva("Código de voto inválido. Voto não contabilizado.\n")
			}
			
		} enquanto (verdadeiro)

		escreva("\n--- RESULTADOS DA ELEIÇÃO ---\n")
		
		// a) Total de votos para cada candidato
		escreva("a) Total de votos por candidato:\n")
		escreva("   Candidato 1: ", cont_candidato1, " votos\n")
		escreva("   Candidato 2: ", cont_candidato2, " votos\n")
		escreva("   Candidato 3: ", cont_candidato3, " votos\n")
		escreva("   Candidato 4: ", cont_candidato4, " votos\n")
		
		// b) Total de votos nulos
		escreva("b) Total de votos NULOS: ", cont_nulo, " votos\n")
		
		// c) Total de votos em branco
		escreva("c) Total de votos EM BRANCO: ", cont_branco, " votos\n")
		
		escreva("\nTOTAL DE VOTOS VÁLIDOS/NULOS/BRANCOS: ", total_votos, "\n")
		
		se (total_votos > 0)
		{
			// d) Porcentagem de votos nulos
			real perc_nulo = (cont_nulo / (real)total_votos) * 100.0
			escreva("d) Porcentagem de votos NULOS: ", formata_real(perc_nulo, 2), "%\n")
			
			// e) Porcentagem de votos em branco
			real perc_branco = (cont_branco / (real)total_votos) * 100.0
			escreva("e) Porcentagem de votos EM BRANCO: ", formata_real(perc_branco, 2), "%\n")
		}
	}
}