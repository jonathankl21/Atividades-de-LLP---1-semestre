programa
{
	funcao inicio()
	{
		inteiro idade
		real altura
		
		real soma_altura_maior_50 = 0.0
		inteiro cont_maior_50 = 0

		escreva("--- CÁLCULO DA MÉDIA DAS ALTURAS (PESSOAS > 50 ANOS) ---\n")
		escreva("Para encerrar a entrada de dados, digite idade menor ou igual a 0.\n")

		faca
		{
			escreva("\nDigite a idade (ou <= 0 para finalizar): ")
			leia(idade)
			
			se (idade <= 0)
			{
				pare // Finaliza o laço
			}

			escreva("  Altura (m): ")
			leia(altura)
			
			se (idade > 50)
			{
				soma_altura_maior_50 = soma_altura_maior_50 + altura
				cont_maior_50++
			}
			
		} enquanto (verdadeiro)

		escreva("\n--- RESULTADOS FINAIS ---\n")
		
		real media_alturas = 0.0
		se (cont_maior_50 > 0)
		{
			media_alturas = soma_altura_maior_50 / (real)cont_maior_50
		}
		
		escreva("Total de pessoas com mais de 50 anos: ", cont_maior_50, "\n")
		escreva("Média das alturas das pessoas com mais de 50 anos: ", formata_real(media_alturas, 2), " m\n")
	}
}