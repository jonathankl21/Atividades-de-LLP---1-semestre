programa
{
	funcao inicio()
	{
		inteiro idade, i
		real peso, altura
		caracter cor_olhos, cor_cabelos
		
		inteiro cont_condicao1 = 0 // Idade > 50 E peso < 60
		
		inteiro cont_altura_menor_150 = 0
		inteiro soma_idade_altura_menor_150 = 0
		
		inteiro cont_olhos_azuis = 0
		inteiro cont_ruivo_nao_azul = 0
		
		inteiro total_pessoas = 6

		para (i = 1; i <= total_pessoas; i++)
		{
			escreva("\nPESSOA ", i, ":\n")
			escreva("  Idade: ")
			leia(idade)
			escreva("  Peso (kg): ")
			leia(peso)
			escreva("  Altura (m): ")
			leia(altura)
			escreva("  Cor dos olhos (A=azul, P=preto, V=verde, C=castanho): ")
			leia(cor_olhos)
			escreva("  Cor dos cabelos (P=preto, C=castanho, L=louro, R=ruivo): ")
			leia(cor_cabelos)
			
			// Converte para maiúsculas para facilitar a comparação
			cor_olhos = caracter_maiusculo(cor_olhos)
			cor_cabelos = caracter_maiusculo(cor_cabelos)
			
			// a) Quantidade de pessoas com idade > 50 anos E peso < 60 kg
			se (idade > 50 e peso < 60.0)
			{
				cont_condicao1++
			}
			
			// b) Média das idades das pessoas com altura < 1,50 m
			se (altura < 1.50)
			{
				soma_idade_altura_menor_150 = soma_idade_altura_menor_150 + idade
				cont_altura_menor_150++
			}
			
			// c) Porcentagem de pessoas com olhos azuis
			se (cor_olhos == 'A')
			{
				cont_olhos_azuis++
			}
			
			// d) Quantidade de pessoas ruivas E que NÃO possuem olhos azuis
			se (cor_cabelos == 'R' e cor_olhos != 'A')
			{
				cont_ruivo_nao_azul++
			}
		}

		escreva("\n--- RESULTADOS FINAIS ---\n")
		
		// a) Idade > 50 e peso < 60
		escreva("a) Pessoas com idade > 50 e peso < 60 kg: ", cont_condicao1, "\n")
		
		// b) Média das idades com altura < 1,50 m
		real media_idade_altura_menor_150 = 0.0
		se (cont_altura_menor_150 > 0)
		{
			media_idade_altura_menor_150 = soma_idade_altura_menor_150 / (real)cont_altura_menor_150
		}
		escreva("b) Média das idades (altura < 1,50 m): ", formata_real(media_idade_altura_menor_150, 2), " anos\n")
		
		// c) Porcentagem de pessoas com olhos azuis
		real perc_olhos_azuis = (cont_olhos_azuis / (real)total_pessoas) * 100.0
		escreva("c) Porcentagem de olhos azuis: ", formata_real(perc_olhos_azuis, 2), "%\n")
		
		// d) Ruivas e não azuis
		escreva("d) Ruivas e não azuis: ", cont_ruivo_nao_azul, "\n")
	}
}