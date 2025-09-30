programa
{
	funcao inicio()
	{
		inteiro idade, i
		real peso
		
		real soma_peso1 = 0.0 // 1 a 10 anos
		real soma_peso2 = 0.0 // 11 a 20 anos
		real soma_peso3 = 0.0 // 21 a 30 anos
		real soma_peso4 = 0.0 // 31 anos para cima
		
		inteiro cont1 = 0
		inteiro cont2 = 0
		inteiro cont3 = 0
		inteiro cont4 = 0
		
		inteiro total_pessoas = 15

		escreva("--- DIGITE IDADE E PESO DE 15 PESSOAS ---\n")

		para (i = 1; i <= total_pessoas; i++)
		{
			escreva("\nPESSOA ", i, ":\n")
			escreva("  Idade: ")
			leia(idade)
			escreva("  Peso (kg): ")
			leia(peso)
			
			se (idade >= 1 e idade <= 10)
			{
				soma_peso1 = soma_peso1 + peso
				cont1++
			}
			senao se (idade >= 11 e idade <= 20)
			{
				soma_peso2 = soma_peso2 + peso
				cont2++
			}
			senao se (idade >= 21 e idade <= 30)
			{
				soma_peso3 = soma_peso3 + peso
				cont3++
			}
			senao if (idade >= 31)
			{
				soma_peso4 = soma_peso4 + peso
				cont4++
			}
		}

		escreva("\n--- MÉDIAS DE PESO POR FAIXA ETÁRIA ---\n")
		
		// Média da 1ª faixa
		real media_peso1 = 0.0
		se (cont1 > 0) { media_peso1 = soma_peso1 / cont1 }
		escreva("1. Faixa (1 a 10 anos, ", cont1, " pessoas): ", formata_real(media_peso1, 2), " kg\n")
		
		// Média da 2ª faixa
		real media_peso2 = 0.0
		se (cont2 > 0) { media_peso2 = soma_peso2 / cont2 }
		escreva("2. Faixa (11 a 20 anos, ", cont2, " pessoas): ", formata_real(media_peso2, 2), " kg\n")
		
		// Média da 3ª faixa
		real media_peso3 = 0.0
		se (cont3 > 0) { media_peso3 = soma_peso3 / cont3 }
		escreva("3. Faixa (21 a 30 anos, ", cont3, " pessoas): ", formata_real(media_peso3, 2), " kg\n")
		
		// Média da 4ª faixa
		real media_peso4 = 0.0
		se (cont4 > 0) { media_peso4 = soma_peso4 / cont4 }
		escreva("4. Faixa (31 anos p/ cima, ", cont4, " pessoas): ", formata_real(media_peso4, 2), " kg\n")
	}
}