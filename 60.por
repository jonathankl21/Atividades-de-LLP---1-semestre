programa
{
	// Função para verificar se um número é primo
	funcao logico eh_primo(inteiro n)
	{
		se (n <= 1)
		{
			retorne falso
		}
		se (n == 2)
		{
			retorne verdadeiro
		}
		se (n % 2 == 0)
		{
			retorne falso
		}
		
		// O loop só precisa ir até a raiz quadrada de n
		inteiro i = 3
		enquanto (i * i <= n)
		{
			se (n % i == 0)
			{
				retorne falso
			}
			i = i + 2
		}
		retorne verdadeiro
	}

	funcao inicio()
	{
		inteiro numero, i
		inteiro soma_pares = 0
		inteiro soma_primos = 0
		
		escreva("--- DIGITE 10 NÚMEROS ---\n")

		para (i = 1; i <= 10; i++)
		{
			escreva("Digite o ", i, "º número: ")
			leia(numero)
			
			// Soma dos pares
			se (numero % 2 == 0)
			{
				soma_pares = soma_pares + numero
			}
			
			// Soma dos primos
			se (eh_primo(numero))
			{
				soma_primos = soma_primos + numero
			}
		}

		escreva("\n--- RESULTADOS ---\n")
		escreva("Soma dos números pares: ", soma_pares, "\n")
		escreva("Soma dos números primos: ", soma_primos, "\n")
	}
}