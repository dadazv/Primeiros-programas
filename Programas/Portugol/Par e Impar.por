programa {
  funcao logico par(inteiro a){
    se(a % 2 == 0){
      retorne verdadeiro
    }
    senao{
      retorne falso
    }
  }
  funcao inicio(){
    inteiro a

    escreva("Digite um número: \n")
    leia(a)
    se(par(a)){
      escreva("É par.")
    }
    senao{
      escreva("É ímpar.")
    }
  }
}
