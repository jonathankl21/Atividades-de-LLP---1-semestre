programa {
funcao inicio() {
    real N_lados, N_diagonais
    
    escreva("--- 22. Diagonais do Polígono --- \n")
    escreva("Número de lados do polígono convexo: ")
    leia(N_lados)
    
    // Fórmula: ND = N * (N - 3) / 2
    N_diagonais = N_lados * (N_lados - 3.0) / 2.0
    
    escreva("\nO número de diagonais é: ", N_diagonais, "\n")
}    
  }
}
