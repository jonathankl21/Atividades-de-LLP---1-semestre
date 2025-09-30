programa {
funcao inicio() {
    real sal_minimo, sal_funcionario, qtd_salarios
    
    escreva("--- 12. Salários Mínimos --- \n")
    escreva("Valor do Salário Mínimo: R$ ")
    leia(sal_minimo)
    escreva("Salário do Funcionário: R$ ")
    leia(sal_funcionario)
    
    qtd_salarios = sal_funcionario / sal_minimo
    escreva("\nO funcionário ganha ", qtd_salarios, " salários mínimos.\n")
}
    
  }
}
