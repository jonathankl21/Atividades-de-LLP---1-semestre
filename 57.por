programa
{
	funcao inicio()
	{
		inteiro idade, i
		real altura, peso
		
		inteiro cont_maior_50 = 0
		inteiro cont_idade_10_20 = 0
		real soma_altura_10_20 = 0.0
		inteiro cont_peso_menor_40 = 0
		inteiro total_pessoas = 5

		para (i = 1; i <= total_pessoas; i++)
		{
			escreva("\nPESSOA ", i, ":\n")
			escreva("  Idade: ")
			leia(idade)
			escreva("  Altura (m): ")
			leia(altura)
			escreva("  Peso (kg): ")
			leia(peso)
			
			// a) Quantidade de pessoas com idade superior a 50 anos
			se (idade > 50)
			{
				cont_maior_50++
			}
			
			// b) Média das alturas das pessoas com idade entre 10 e 20 anos
			se (idade >= 10 e idade <= 20)
			{
				soma_altura_10_20 = soma_altura_10_20 + altura
				cont_idade_10_20++
			}
			
			// c) Porcentagem de pessoas com peso inferior a 40 kg
			se (peso < 40.0)
			{
				cont_peso_menor_40++
			}
		}

		escreva("\n--- RESULTADOS FINAIS ---\n")
		
		// a) Quantidade de pessoas com idade superior a 50 anos
		escreva("a) Pessoas com idade > 50 anos: ", cont_maior_50, "\n")
		
		// b) Média das alturas das pessoas com idade entre 10 e 20 anos
		real media_altura_10_20 = 0.0
		se (cont_idade_10_20 > 0)
		{
			media_altura_10_20 = soma_altura_10_20 / cont_idade_10_20
		}
		escreva("b) Média das alturas (10 a 20 anos): ", formata_real(media_altura_10_20, 2), " m\n")
		
		// c) Porcentagem de pessoas com peso inferior a 40 kg
		real perc_peso_menor_40 = (cont_peso_menor_40 / (real)total_pessoas) * 100.0
		escreva("c) Porcentagem de peso < 40 kg: ", formata_real(perc_peso_menor_40, 2), "%\n")
	}
}