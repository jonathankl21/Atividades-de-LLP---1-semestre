programa
{
	funcao inicio()
	{
		real nota1, nota2, media

		escreva("Digite a primeira nota: ")
		leia(nota1)
		escreva("Digite a segunda nota: ")
		leia(nota2)

		media = (nota1 + nota2) / 2.0

		escreva("\nA média aritmética é: ", media, "\n")

		se (media >= 7.0)
		{
			escreva("MENSAGEM: Aprovado\n")
		}
		senao se (media >= 3.0) // Entre 3.0 e 7.0 (exclusivo)
		{
			escreva("MENSAGEM: Exame\n")
		}
		senao // Abaixo de 3.0
		{
			escreva("MENSAGEM: Reprovado\n")
		}
	}
}