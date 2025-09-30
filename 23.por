programa {
funcao inicio() {
    real angulo1, angulo2, angulo3
    
    escreva("--- 23. Terceiro Ângulo --- \n")
    escreva("Medida do primeiro ângulo: ")
    leia(angulo1)
    escreva("Medida do segundo ângulo: ")
    leia(angulo2)
    
    // A soma dos ângulos é 180 graus
    angulo3 = 180.0 - (angulo1 + angulo2)
    
    escreva("\nA medida do terceiro ângulo é: ", angulo3, " graus.\n")
}    
  }
}
