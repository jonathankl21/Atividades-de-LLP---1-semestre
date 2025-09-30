programa
{
	funcao inicio()
	{
		real num1, num2, resultado1, resultado2
		caracter opcao

		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)

		escreva("\nEscolha a operação:\n")
		escreva("a) O primeiro número elevado ao segundo número\n")
		escreva("b) Raiz quadrada de cada um dos números\n")
		escreva("c) Raiz cúbica de cada um dos números\n")
		escreva("Opção (a, b ou c): ")
		leia(opcao)

		escolha (opcao)
		{
			caso 'a':
			caso 'A':
				resultado1 = potencia(num1, num2)
				escreva("\n", num1, " elevado a ", num2, ": ", resultado1, "\n")
				pare

			caso 'b':
			caso 'B':
				se (num1 >= 0 e num2 >= 0) {
					resultado1 = raiz(num1, 2.0)
					resultado2 = raiz(num2, 2.0)
					escreva("\nRaiz Quadrada de ", num1, ": ", resultado1, "\n")
					escreva("Raiz Quadrada de ", num2, ": ", resultado2, "\n")
				} senao {
					escreva("\nERRO: Raiz quadrada não pode ser calculada para números negativos. Execução terminada.\n")
				}
				pare
				
			caso 'c':
			caso 'C':
				resultado1 = potencia(num1, 1.0/3.0) // Raiz cúbica
				resultado2 = potencia(num2, 1.0/3.0) // Raiz cúbica
				escreva("\nRaiz Cúbica de ", num1, ": ", resultado1, "\n")
				escreva("Raiz Cúbica de ", num2, ": ", resultado2, "\n")
				pare
			
			caso contrario:
				escreva("\nERRO: Opção inválida. Execução terminada.\n")
				pare
		}
	}
}