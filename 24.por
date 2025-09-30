programa {
funcao inicio() {
    real reais, dolar, marco_alemao, libra
    real cotacao_dolar = 1.80, cotacao_marco = 2.00, cotacao_libra = 3.57
    
    escreva("--- 24. Conversão de Moedas --- \n")
    escreva("Quantidade de Reais para conversão: R$ ")
    leia(reais)
    
    dolar = reais / cotacao_dolar
    marco_alemao = reais / cotacao_marco
    libra = reais / cotacao_libra
    
    escreva("\nEquivalente em Dólar (R$1,80): $ ", dolar, "\n")
    escreva("Equivalente em Marco Alemão (R$2,00): ", marco_alemao, "\n")
    escreva("Equivalente em Libra Esterlina (R$3,57): £ ", libra, "\n")
}    
  }
}
