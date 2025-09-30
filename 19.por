programa {
funcao inicio() {
    real dimensao1, dimensao2, area_comodo, potencia_iluminacao
    inteiro watts_por_m2 = 18
    
    escreva("--- 19. Iluminação de Cômodo --- \n")
    escreva("Primeira dimensão do cômodo (metros): ")
    leia(dimensao1)
    escreva("Segunda dimensão do cômodo (metros): ")
    leia(dimensao2)
    
    area_comodo = dimensao1 * dimensao2
    // 18W por m²
    potencia_iluminacao = area_comodo * watts_por_m2
    
    escreva("\nÁrea do cômodo: ", area_comodo, " m²\n")
    escreva("Potência de iluminação necessária: ", potencia_iluminacao, " W\n")
}    
  }
}
