programa
{
	funcao inicio()
	{
		inteiro idade
		cadeia categoria

		escreva("Digite a idade do nadador: ")
		leia(idade)

		se (idade < 5)
		{
			escreva("\nNadador não pode ser categorizado (idade inferior a 5 anos).\n")
			retorne
		}
		senao se (idade <= 7) // 5 a 7
		{
			categoria = "Infantil"
		}
		senao se (idade <= 10) // 8 a 10
		{
			categoria = "Juvenil"
		}
		senao se (idade <= 15) // 11 a 15
		{
			categoria = "Adolescente"
		}
		senao se (idade <= 30) // 16 a 30
		{
			categoria = "Adulto"
		}
		senao // Acima de 30
		{
			categoria = "Sênior"
		}

		escreva("\nIdade: ", idade, " anos\n")
		escreva("Categoria: ", categoria, "\n")
	}
}