programa {
inclua biblioteca Matematica // Necessário para a função 'raiz' e 'potencia'

funcao inicio() {
    real cateto1, cateto2, hipotenusa
    
    escreva("--- 16. Hipotenusa --- \n")
    escreva("Valor do primeiro cateto: ")
    leia(cateto1)
    escreva("Valor do segundo cateto: ")
    leia(cateto2)
    
    // H² = C1² + C2² -> H = Raiz(C1² + C2²)
    hipotenusa = Matematica.raiz(Matematica.potencia(cateto1, 2.0) + Matematica.potencia(cateto2, 2.0), 2.0)
    
    escreva("\nO valor da hipotenusa é: ", hipotenusa, "\n")
}    
  }
}
