programa
{
	funcao inicio()
	{
		inteiro senha_correta = 4531
		inteiro senha_digitada

		escreva("Digite a senha: ")
		leia(senha_digitada)

		se (senha_digitada == senha_correta)
		{
			escreva("\nPermissão de acesso concedida.\n")
		}
		senao
		{
			escreva("\nSenha inválida. Acesso negado.\n")
		}
	}
}