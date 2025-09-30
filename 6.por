programa {
funcao inicio() {
    real salario_fixo, valor_vendas, comissao, salario_final
    
    escreva("--- 6. Salário e Comissão --- \n")
    escreva("Digite o salário fixo: R$ ")
    leia(salario_fixo)
    escreva("Digite o valor total das vendas: R$ ")
    leia(valor_vendas)
    
    comissao = valor_vendas * 0.04 // 4% de comissão
    salario_final = salario_fixo + comissao
    
    escreva("\nComissão (4% sobre vendas): R$ ", comissao, "\n")
    escreva("Salário Final a receber: R$ ", salario_final, "\n")
}
    
  }
}
