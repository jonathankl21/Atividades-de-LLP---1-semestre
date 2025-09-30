programa {
 funcao inicio() {
    real nota1, nota2, media_ponderada
    inteiro peso1 = 2, peso2 = 3
    
    escreva("--- 4. Média Ponderada --- \n")
    escreva("Digite a primeira nota: ")
    leia(nota1)
    escreva("Digite a segunda nota: ")
    leia(nota2)
    
    media_ponderada = ((nota1 * peso1) + (nota2 * peso2)) / (peso1 + peso2)
    escreva("\nA média ponderada das notas é: ", media_ponderada, "\n")
}
    
  }
}
