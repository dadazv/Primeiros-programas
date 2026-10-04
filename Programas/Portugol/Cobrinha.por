programa {
  funcao cadeia tamanho(inteiro x){
    cadeia linha = ""
    para(inteiro i = 0; i < x; i++){
      linha = linha + "-"
    }
    retorne linha
  }
  funcao inicio(){
    inteiro x

    escreva("Digite o tamanho: \n")
    leia(x)
    escreva(tamanho(x))
  }
}