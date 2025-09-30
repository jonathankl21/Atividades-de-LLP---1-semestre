programa
{
	funcao inicio()
	{
		inteiro idade
		caracter sexo
		real salario
		
		real soma_salarios = 0.0
		inteiro cont_pessoas = 0
		
		inteiro maior_idade = -1
		inteiro menor_idade = 999
		
		inteiro cont_mulheres_salario_200 = 0
		
		real menor_salario = 9999999.0
		inteiro idade_menor_salario = 0
		caracter sexo_menor_salario = ' '

		escreva("--- PESQUISA REGIONAL (FINALIZA COM IDADE NEGATIVA) ---\n")

		faca
		{
			escreva("\nDigite a idade (ou um valor negativo para finalizar): ")
			leia(idade)
			
			se (idade < 0)
			{
				pare // Finaliza o laço
			}
			
			escreva("  Sexo (M/F): ")
			leia(sexo)
			escreva("  Salário (R$): ")
			leia(salario)
			
			sexo = caracter_maiusculo(sexo)
			
			cont_pessoas++
			soma_salarios = soma_salarios + salario
			
			// Maior e menor idade
			se (idade > maior_idade) {
				maior_idade = idade
			}
			se (idade < menor_idade) {
				menor_idade = idade
			}
			
			// Quantidade de mulheres com salário até R$ 200,00
			se (sexo == 'F' e salario <= 200.0)
			{
				cont_mulheres_salario_200++
			}
			
			// Menor salário e dados da pessoa
			se (salario < menor_salario)
			{
				menor_salario = salario
				idade_menor_salario = idade
				sexo_menor_salario = sexo
			}
			
		} enquanto (verdadeiro)

		escreva("\n--- RESULTADOS FINAIS ---\n")
		
		se (cont_pessoas > 0)
		{
			// a) Média dos salários
			real media_salarios = soma_salarios / (real)cont_pessoas
			escreva("a) Média dos salários do grupo: R$ ", formata_real(media_salarios, 2), "\n")
			
			// b) Maior e menor idade
			escreva("b) Maior idade do grupo: ", maior_idade, " anos\n")
			escreva("   Menor idade do grupo: ", menor_idade, " anos\n")
			
			// c) Mulheres com salário até R$ 200,00
			escreva("c) Mulheres com salário até R$ 200,00: ", cont_mulheres_salario_200, "\n")
			
			// d) Idade e sexo da pessoa com o menor salário
			escreva("d) Pessoa com o menor salário (R$ ", formata_real(menor_salario, 2), "):\n")
			escreva("   Idade: ", idade_menor_salario, " anos\n")
			escreva("   Sexo: ", sexo_menor_salario, "\n")
		}
		senao
		{
			escreva("Nenhum dado válido foi inserido.\n")
		}
	}
}