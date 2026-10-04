programa {
  funcao inicio(){
    inteiro idade,anoA,anoN
    
    anoA = 2026
    escreva("Digite seu ano de nascimento: \n")
    leia(anoN)

    idade = anoA - anoN
    se(idade < 0){
      escreva("Ano de nascimento inválido.")
    }
    senao{
      escreva("Sua idade é: ",idade)
    }
  }
}