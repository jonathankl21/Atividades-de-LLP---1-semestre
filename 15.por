programa {
funcao inicio() {
    real salario, conta1, conta2, valor_total_contas, resta_salario
    
    escreva("--- 15. Salário e Contas Atrasadas --- \n")
    escreva("Salário de João: R$ ")
    leia(salario)
    escreva("Valor da primeira conta: R$ ")
    leia(conta1)
    escreva("Valor da segunda conta: R$ ")
    leia(conta2)
    
    conta1 = conta1 * 1.02
    conta2 = conta2 * 1.02
    
    valor_total_contas = conta1 + conta2
    resta_salario = salario - valor_total_contas
    
    escreva("\nTotal a pagar (com multa): R$ ", valor_total_contas, "\n")
    escreva("Restará do salário de João: R$ ", resta_salario, "\n")
}
    
  }
}
