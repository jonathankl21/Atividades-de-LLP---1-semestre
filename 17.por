programa {
inclua biblioteca Matematica // Necessário para 'pi' e 'potencia'

funcao inicio() {
    real raio, comprimento, area, volume
    
    escreva("--- 17. Esfera --- \n")
    escreva("Digite o raio da esfera: ")
    leia(raio)
    
    // a) Comprimento: C = 2 * pi * R
    comprimento = 2.0 * Matematica.PI * raio
    
    // b) Área: A = pi * R² (Usando a fórmula simplificada solicitada)
    area = Matematica.PI * Matematica.potencia(raio, 2.0)
    
    // c) Volume: V = 4/3 * pi * R³ (Usando a fórmula correta, a 3/4 do livro seria incomum)
    volume = (4.0 / 3.0) * Matematica.PI * Matematica.potencia(raio, 3.0)
    
    escreva("\nResultados:\n")
    escreva("a) Comprimento (C = 2 * pi * R): ", comprimento, "\n")
    escreva("b) Área (A = pi * R²): ", area, "\n")
    escreva("c) Volume (V = 4/3 * pi * R³): ", volume, "\n")
}    
  }
}
