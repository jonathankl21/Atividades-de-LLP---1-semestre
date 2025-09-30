programa
{
	funcao inicio()
	{
		inteiro codigo
		cadeia procedencia

		escreva("Digite o código de origem do produto: ")
		leia(codigo)

		se (codigo == 1)
		{
			procedencia = "Sul"
		}
		senao se (codigo == 2)
		{
			procedencia = "Norte"
		}
		senao se (codigo == 3)
		{
			procedencia = "Leste"
		}
		senao se (codigo == 4)
		{
			procedencia = "Oeste"
		}
		senao se (codigo == 5 ou codigo == 6)
		{
			procedencia = "Nordeste"
		}
		senao se (codigo >= 7 e codigo <= 9) // 7 ou 8 ou 9
		{
			procedencia = "Sudeste"
		}
		senao se (codigo >= 10 e codigo <= 20)
		{
			procedencia = "Centro-oeste"
		}
		senao se (codigo >= 21 e codigo <= 30)
		{
			// Nota: O código 21 a 30 está duplicado como "Nordeste" na tabela.
			procedencia = "Nordeste" 
		}
		senao
		{
			procedencia = "Código de origem não mapeado/inválido"
		}

		escreva("\nCódigo de Origem: ", codigo, "\n")
		escreva("Procedência: ", procedencia, "\n")
	}
}