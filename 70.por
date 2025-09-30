programa
{
	funcao inicio()
	{
		inteiro opcao
		
		faca
		{
			escreva("\n--- Menu de Opções ---\n")
			escreva("1. Média aritmética\n")
			escreva("2. Média ponderada\n")
			escreva("3. Sair\n")
			escreva("Digite a opção desejada: ")
			leia(opcao)
			
			escolha (opcao)
			{
				caso 1:
					// Média aritmética
					real n1_arit, n2_arit, media_arit
					escreva("  Digite a primeira nota: ")
					leia(n1_arit)
					escreva("  Digite a segunda nota: ")
					leia(n2_arit)
					media_arit = (n1_arit + n2_arit) / 2.0
					escreva("  Média Aritmética: ", formata_real(media_arit, 2), "\n")
					pare
					
				caso 2:
					// Média ponderada
					real n1_pond, n2_pond, n3_pond
					real p1_pond, p2_pond, p3_pond
					real media_pond
					
					escreva("  Digite a 1ª nota e seu peso: \n")
					leia(n1_pond)
					leia(p1_pond)
					
					escreva("  Digite a 2ª nota e seu peso: \n")
					leia(n2_pond)
					leia(p2_pond)
					
					escreva("  Digite a 3ª nota e seu peso: \n")
					leia(n3_pond)
					leia(p3_pond)
					
					media_pond = (n1_pond * p1_pond + n2_pond * p2_pond + n3_pond * p3_pond) / (p1_pond + p2_pond + p3_pond)
					escreva("  Média Ponderada: ", formata_real(media_pond, 2), "\n")
					pare
					
				case 3:
					escreva("Saindo do programa. Até logo!\n")
					pare
					
				caso contrario:
					escreva("Opção inválida. Por favor, escolha 1, 2 ou 3.\n")
					pare
			}
		} enquanto (opcao != 3)
	}
}