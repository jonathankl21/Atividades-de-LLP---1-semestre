programa
{
	funcao inicio()
	{
		real num1, num2, resultado, maior, menor
		inteiro opcao

		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)

		escreva("\nEscolha a operação:\n")
		escreva("1 - Média\n")
		escreva("2 - Diferença do maior pelo menor\n")
		escreva("3 - Produto\n")
		escreva("4 - Divisão do primeiro pelo segundo\n")
		escreva("Opção: ")
		leia(opcao)

		se (opcao < 1 ou opcao > 4)
		{
			escreva("\nERRO: Opção inválida. Execução terminada.\n")
			retorne // Termina o programa
		}

		se (opcao == 4 e num2 == 0)
		{
			escreva("\nERRO: O segundo número não pode ser zero na divisão. Execução terminada.\n")
			retorne // Termina o programa
		}
		
		se (num1 > num2) {
			maior = num1
			menor = num2
		} senao {
			maior = num2
			menor = num1
		}

		escolha (opcao)
		{
			caso 1:
				resultado = (num1 + num2) / 2.0
				escreva("\nMédia: ", resultado, "\n")
				pare
			caso 2:
				resultado = maior - menor
				escreva("\nDiferença do maior pelo menor: ", resultado, "\n")
				pare
			caso 3:
				resultado = num1 * num2
				escreva("\nProduto: ", resultado, "\n")
				pare
			caso 4:
				resultado = num1 / num2
				escreva("\nDivisão do primeiro pelo segundo: ", resultado, "\n")
				pare
		}
	}
}