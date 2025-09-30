programa
{
	funcao inicio()
	{
		inteiro idade, grupo_risco
		real peso

		escreva("Digite a idade da pessoa: ")
		leia(idade)
		escreva("Digite o peso da pessoa (em kg): ")
		leia(peso)

		se (idade < 20)
		{
			se (peso <= 60.0)
			{
				grupo_risco = 9
			}
			senao se (peso <= 90.0) // Entre 60 e 90 (inclusive)
			{
				grupo_risco = 8
			}
			senao // Acima de 90
			{
				grupo_risco = 7
			}
		}
		senao se (idade <= 50) // De 20 a 50
		{
			se (peso <= 60.0)
			{
				grupo_risco = 6
			}
			senao se (peso <= 90.0)
			{
				grupo_risco = 5
			}
			senao
			{
				grupo_risco = 4
			}
		}
		senao // Maiores que 50
		{
			se (peso <= 60.0)
			{
				grupo_risco = 3
			}
			senao se (peso <= 90.0)
			{
				grupo_risco = 2
			}
			senao
			{
				grupo_risco = 1
			}
		}

		escreva("\nIdade: ", idade, " anos\n")
		escreva("Peso: ", peso, " kg\n")
		escreva("Grupo de Risco: ", grupo_risco, "\n")
	}
}