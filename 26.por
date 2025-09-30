    programa
{
	funcao inicio()
	{
		real n1, n2, n3, n4, media

		escreva("Digite a primeira nota: ")
		leia(n1)
		escreva("Digite a segunda nota: ")
		leia(n2)
		escreva("Digite a terceira nota: ")
		leia(n3)
		escreva("Digite a quarta nota: ")
		leia(n4)

		media = (n1 + n2 + n3 + n4) / 4.0

		escreva("\nA média aritmética é: ", media, "\n")

		se (media >= 7.0)
		{
			escreva("MENSAGEM: Aprovado\n")
		}
		senao
		{
			escreva("MENSAGEM: Reprovado\n")
		}
	}
}
  }
}
