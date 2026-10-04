programa {
  funcao inicio(){
    real num

    escreva("Digite um número: \n")
    leia(num)
    se(num > 0){
      escreva("Ele é positivo.")
    }
    senao{
      se(num < 0){
        escreva("Ele é negativo.")
      }
      senao{
        se(num == 0){
          escreva("Ele é zero.")
        }
      }
    }
  }
}