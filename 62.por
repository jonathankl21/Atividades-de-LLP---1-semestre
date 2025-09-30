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
		inteiro contador_primos = 0
		
		escreva("--- DIGITE 10 NÚMEROS INTEIROS ---\n")

		para (i = 1; i <= 10; i++)
		{
			escreva("Digite o ", i, "º número: ")
			leia(numero)
			
			se (eh_primo(numero))
			{
				contador_primos++
			}
		}

		escreva("\n--- RESULTADOS ---\n")
		escreva("Quantidade de números primos digitados: ", contador_primos, "\n")
	}
}