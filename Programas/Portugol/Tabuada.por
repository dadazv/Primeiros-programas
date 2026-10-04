programa {
  funcao inicio() {
    inteiro num

    escreva("Digite um numero: \n")
    leia(num)
    para(inteiro i = 0;i <= 10;i++){
      escreva(num,"*",i,"=",num*i,"\n")
    }
  }
}
