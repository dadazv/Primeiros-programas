programa {
  funcao inteiro dobro(inteiro num){
    retorne 2 * num
  }
  funcao inteiro triplo(inteiro num){
    retorne 3 * num
  }
  funcao inicio() {
    inteiro num

    escreva("Digite um número: \n")
    leia(num)

    escreva(dobro(num),"\n")
    escreva(triplo(num),"\n")
  }
}
