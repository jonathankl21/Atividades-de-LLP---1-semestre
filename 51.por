programa
{
	funcao inicio()
	{
		real valores[20] // 5 grupos * 4 valores = 20
		inteiro i, j, k, n_grupos = 5, n_valores_por_grupo = 4
		
		// 1. Leitura dos 5 grupos de 4 valores (total de 20 valores)
		escreva("--- LEITURA DOS VALORES ---\n")
		para (i = 0; i < n_grupos; i++)
		{
			escreva("GRUPO ", i + 1, ":\n")
			para (j = 0; j < n_valores_por_grupo; j++)
			{
				escreva("  Digite o valor ", j + 1, " (A, B, C ou D): ")
				leia(valores[i * n_valores_por_grupo + j])
			}
		}

		// 2. Mostra na ordem lida
		escreva("\n--- ORDEM LIDA ---\n")
		para (i = 0; i < 20; i++)
		{
			escreva(valores[i])
			se ((i + 1) % 4 == 0)
			{
				escreva(" (Fim do Grupo ", (i / 4) + 1, ")\n")
			}
			senao
			{
				escreva(" | ")
			}
		}

		// 3. Organização em ordem crescente (usando Bubble Sort simplificado)
		para (i = 0; i < 19; i++)
		{
			para (j = i + 1; j < 20; j++)
			{
				se (valores[i] > valores[j])
				{
					real temp = valores[i]
					valores[i] = valores[j]
					valores[j] = temp
				}
			}
		}
		
		escreva("\n--- ORDEM CRESCENTE ---\n")
		para (i = 0; i < 20; i++)
		{
			escreva(valores[i], " | ")
		}
		escreva("\n")

		// 4. Organização em ordem decrescente (a partir da lista crescente)
		escreva("\n--- ORDEM DECRESCENTE ---\n")
		para (i = 19; i >= 0; i--)
		{
			escreva(valores[i], " | ")
		}
		escreva("\n")
	}
}