programa {
funcao inicio() {
    real celsius, fahrenheit
    
    escreva("--- 18. Celsius para Fahrenheit --- \n")
    escreva("Digite a temperatura em Celsius: ")
    leia(celsius)
    
    // Fórmula: F = 180 * (C + 32) / 100
    fahrenheit = 180.0 * (celsius + 32.0) / 100.0
    
    escreva("\nA temperatura em Fahrenheit é: ", fahrenheit, "\n")
}    
  }
}
