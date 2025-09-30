programa {
funcao inicio() {
    real horas_trab, sal_min, horas_extras, valor_hora_trab, valor_hora_extra
    real sal_bruto, quantia_extra, sal_receber
    
    escreva("--- 21. Salário e Horas Extras --- \n")
    escreva("Número de horas trabalhadas: ")
    leia(horas_trab)
    escreva("Valor do Salário Mínimo: R$ ")
    leia(sal_min)
    escreva("Número de horas extras trabalhadas: ")
    leia(horas_extras)
    
    valor_hora_trab = sal_min / 8.0
    
    valor_hora_extra = sal_min / 4.0
    
    sal_bruto = horas_trab * valor_hora_trab
    
    quantia_extra = horas_extras * valor_hora_extra
    
    sal_receber = sal_bruto + quantia_extra
    
    escreva("\nSalário Bruto: R$ ", sal_bruto, "\n")
    escreva("Quantia de Horas Extras: R$ ", quantia_extra, "\n")
    escreva("Salário Total a Receber: R$ ", sal_receber, "\n")
}    
  }
}
