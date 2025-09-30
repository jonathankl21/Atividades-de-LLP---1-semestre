programa {
funcao inicio() {
    inteiro num_tabuada, i, resultado
    
    escreva("--- 13. Tabuada --- \n")
    escreva("Digite um número para a tabuada: ")
    leia(num_tabuada)
    
    escreva("\nTabuada de ", num_tabuada, ":\n")
    para (i = 10; i >= 0; i--) {
        resultado = num_tabuada * i
        escreva(num_tabuada, " x ", i, " = ", resultado, "\n")
    }
}
    
  }
}
