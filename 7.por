programa {
funcao inicio() {
    real peso_atual, peso_engorda, peso_emagrece
    
    escreva("--- 7. Novo Peso --- \n")
    escreva("Digite o peso atual (em kg): ")
    leia(peso_atual)
    
    peso_engorda = peso_atual * 1.15
    peso_emagrece = peso_atual * 0.80
    
    escreva("\na) Novo peso se engordar 15%: ", peso_engorda, " kg\n")
    escreva("b) Novo peso se emagrecer 20%: ", peso_emagrece, " kg\n")
}
    
  }
}
