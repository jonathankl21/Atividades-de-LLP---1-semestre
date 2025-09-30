programa
{
	funcao inicio()
	{
		inteiro idade, i
		real peso, altura
		
		inteiro soma_idades = 0
		inteiro cont_condicao1 = 0 // peso > 90 E altura < 1.50
		
		inteiro cont_altura_maior_190 = 0
		inteiro cont_idade_10_30_altura_190 = 0
		
		inteiro total_pessoas = 10

		para (i = 1; i <= total_pessoas; i++)
		{
			escreva("\nPESSOA ", i, ":\n")
			escreva("  Idade: ")
			leia(idade)
			escreva("  Peso (kg): ")
			leia(peso)
			escreva("  Altura (m): ")
			leia(altura)
			
			// a) Média das idades
			soma_idades = soma_idades + idade
			
			// b) Pessoas com peso > 90 kg E altura < 1,50 m
			se (peso > 90.0 e altura < 1.50)
			{
				cont_condicao1++
			}
			
			// c) Porcentagem de pessoas com idade entre 10 e 30 anos
			//    entre as pessoas que medem mais de 1,90 m
			se (altura > 1.90)
			{
				cont_altura_maior_190++
				se (idade >= 10 e idade <= 30)
				{
					cont_idade_10_30_altura_190++
				}
			}
		}

		escreva("\n--- RESULTADOS FINAIS ---\n")
		
		// a) Média das idades
		real media_idades = soma_idades / (real)total_pessoas
		escreva("a) Média das idades: ", formata_real(media_idades, 2), " anos\n")
		
		// b) Peso > 90 kg e altura < 1,50 m
		escreva("b) Pessoas com peso > 90 kg e altura < 1,50 m: ", cont_condicao1, "\n")
		
		// c) Porcentagem de idade 10-30 entre pessoas com altura > 1,90 m
		real perc_idade_10_30_altura_190 = 0.0
		se (cont_altura_maior_190 > 0)
		{
			perc_idade_10_30_altura_190 = (cont_idade_10_30_altura_190 / (real)cont_altura_maior_190) * 100.0
		}
		escreva("c) Porcentagem de pessoas com 10-30 anos e altura > 1,90 m: ", formata_real(perc_idade_10_30_altura_190, 2), "%\n")
	}
}