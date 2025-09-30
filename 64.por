programa
{
	funcao inicio()
	{
		inteiro idade, opiniao, i
		
		inteiro cont_total = 15
		
		inteiro soma_idade_otimo = 0
		inteiro cont_otimo = 0 // Opinião 3
		
		inteiro cont_regular = 0 // Opinião 1
		
		inteiro cont_bom = 0 // Opinião 2

		escreva("--- PESQUISA DE CINEMA (15 ESPECTADORES) ---\n")
		escreva("Opiniões: 3-ótimo; 2-bom; 1-regular.\n")

		para (i = 1; i <= cont_total; i++)
		{
			escreva("\nESPECTADOR ", i, ":\n")
			escreva("  Idade: ")
			leia(idade)
			escreva("  Opinião (1, 2 ou 3): ")
			leia(opiniao)
			
			se (opiniao == 3) // Ótimo
			{
				soma_idade_otimo = soma_idade_otimo + idade
				cont_otimo++
			}
			senao se (opiniao == 2) // Bom
			{
				cont_bom++
			}
			senao se (opiniao == 1) // Regular
			{
				cont_regular++
			}
			senao
			{
				escreva("  Opinião inválida. Dados não considerados no cálculo.\n")
			}
		}

		escreva("\n--- RESULTADOS DA PESQUISA ---\n")
		
		// a) Média das idades que responderam ótimo
		real media_idade_otimo = 0.0
		se (cont_otimo > 0) { media_idade_otimo = soma_idade_otimo / (real)cont_otimo }
		escreva("a) Média das idades (ótimo): ", formata_real(media_idade_otimo, 2), " anos\n")
		
		// b) Quantidade de pessoas que responderam regular
		escreva("b) Pessoas que responderam regular: ", cont_regular, "\n")
		
		// c) Porcentagem de pessoas que responderam bom
		real perc_bom = (cont_bom / (real)cont_total) * 100.0
		escreva("c) Porcentagem de respostas 'bom': ", formata_real(perc_bom, 2), "%\n")
	}
}