programa {
funcao inicio() {
    inteiro hora_in, minutos_in, hora_minutos, total_minutos, total_segundos
    
    escreva("--- 25. Conversão de Tempo --- \n")
    escreva("Digite a hora (0-23): ")
    leia(hora_in)
    escreva("Digite os minutos (0-59): ")
    leia(minutos_in)
    
    // a) Hora digitada convertida em minutos
    hora_minutos = hora_in * 60
    
    // b) Total dos minutos
    total_minutos = hora_minutos + minutos_in
    
    // c) Total dos minutos convertidos em segundos
    total_segundos = total_minutos * 60
    
    escreva("\nResultados:\n")
    escreva("a) Hora convertida em minutos: ", hora_minutos, " minutos\n")
    escreva("b) Total de minutos: ", total_minutos, " minutos\n")
    escreva("c) Total de segundos: ", total_segundos, " segundos\n")
}    
  }
}
