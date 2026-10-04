programa {
  funcao inteiro maior(inteiro a, inteiro b){
    inteiro maiorN
    se(a > b){
      maiorN = a
    }
    senao{
      se(a < b){
        maiorN = b
      }
    }
    retorne maiorN
  }
  funcao inicio() {
    inteiro a,b

    escreva("Digite um número: \n")
    leia(a)
    escreva("Digite um número: \n")
    leia(b)

    escreva("O maior é ",maior(a,b),"\n")
  }
}
