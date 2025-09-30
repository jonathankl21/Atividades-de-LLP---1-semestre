programa {
 funcao inicio() {
    inteiro ano_nasc, ano_atual, idade_anos
    real idade_meses, idade_dias, idade_semanas
    
    escreva("--- 14. Cálculo de Idade --- \n")
    escreva("Ano de nascimento: ")
    leia(ano_nasc)
    escreva("Ano atual: ")
    leia(ano_atual)
    
    idade_anos = ano_atual - ano_nasc
    idade_meses = idade_anos * 12.0
    idade_dias = idade_anos * 365.0 
    idade_semanas = idade_anos * 52.0
    
    escreva("\nResultados:\n")
    escreva("a) Idade em anos: ", idade_anos, "\n")
    escreva("b) Idade em meses (aprox.): ", idade_meses, "\n")
    escreva("c) Idade em dias (aprox.): ", idade_dias, "\n")
    escreva("d) Idade em semanas (aprox.): ", idade_semanas, "\n")
}
    
  }
}
