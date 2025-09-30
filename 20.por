programa {
inclua biblioteca Matematica // Necessário para 'coss' e 'pi'

funcao inicio() {
    real angulo_graus, distancia_parede, escada_medida, angulo_radianos
    
    escreva("--- 20. Medida da Escada --- \n")
    escreva("Medida do ângulo (em graus): ")
    leia(angulo_graus)
    escreva("Distância que a escada está da parede: ")
    leia(distancia_parede)
    
    // Converter o ângulo de graus para radianos
    angulo_radianos = angulo_graus * Matematica.PI / 180.0
    
    // Cos(a) = Distância / Escada -> Escada = Distância / Cos(a)
    escada_medida = distancia_parede / Matematica.coss(angulo_radianos)
    
    escreva("\nA medida da escada é: ", escada_medida, "\n")
}    
  }
}
