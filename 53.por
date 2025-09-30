programa
{
	funcao inicio()
	{
		inteiro idade, i
		inteiro cont_faixa1 = 0 // Até 15
		inteiro cont_faixa2 = 0 // 16 a 30
		inteiro cont_faixa3 = 0 // 31 a 45
		inteiro cont_faixa4 = 0 // 46 a 60
		inteiro cont_faixa5 = 0 // Acima de 60
		inteiro total_pessoas = 8

		para (i = 1; i <= total_pessoas; i++)
		{
			escreva("Digite a idade da pessoa ", i, ": ")
			leia(idade)
			
			se (idade <= 15)
			{
				cont_faixa1++
			}
			senao se (idade <= 30) // 16 a 30
			{
				cont_faixa2++
			}
			senao se (idade <= 45) // 31 a 45
			{
				cont_faixa3++
			}
			senao se (idade <= 60) // 46 a 60
			{
				cont_faixa4++
			}
			senao // Acima de 60
			{
				cont_faixa5++
			}
		}

		// a) Quantidade de pessoas em cada faixa etária
		escreva("\n--- RESULTADOS ---\n")
		escreva("a) Quantidade de pessoas por faixa etária:\n")
		escreva("   1ª faixa (Até 15 anos): ", cont_faixa1, " pessoas\n")
		escreva("   2ª faixa (16 a 30 anos): ", cont_faixa2, " pessoas\n")
		escreva("   3ª faixa (31 a 45 anos): ", cont_faixa3, " pessoas\n")
		escreva("   4ª faixa (46 a 60 anos): ", cont_faixa4, " pessoas\n")
		escreva("   5ª faixa (Acima de 60 anos): ", cont_faixa5, " pessoas\n")

		// b) Porcentagem de pessoas na primeira faixa etária
		real perc_faixa1 = (cont_faixa1 / (real)total_pessoas) * 100.0
		escreva("b) Porcentagem de pessoas na 1ª faixa etária: ", formata_real(perc_faixa1, 2), "%\n")

		// c) Porcentagem de pessoas na última faixa etária
		real perc_faixa5 = (cont_faixa5 / (real)total_pessoas) * 100.0
		escreva("c) Porcentagem de pessoas na 5ª faixa etária: ", formata_real(perc_faixa5, 2), "%\n")
	}
}