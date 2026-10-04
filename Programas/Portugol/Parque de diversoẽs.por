programa {
  funcao inicio(){
    caracter Pcar
    real altura
    inteiro idade

    escreva("Você tem problema cardíaco?s/n \n")
    leia(Pcar)
    escreva("Qual sua altura? \n")
    leia(altura)
    escreva("Qual sua idade? \n")
    leia(idade)
    se(Pcar == "s" ou altura < 1.50 ou idade < 12){
      escreva("Entrada proibida. \n")
    }
    senao{
      escreva("Entrada permitida. \n")
    }
  }
}