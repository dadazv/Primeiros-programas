programa {
  funcao cadeia saudacao(cadeia nome, inteiro idade){
  retorne "Boa noite, " + nome + ", você tem " + idade + " anos!"
  }
  funcao inicio() {
    cadeia nome
    inteiro idade
    
    escreva("Digite seu nome: \n")
    leia(nome)
    escreva("Digite sua idade:  \n")
    leia(idade)
    escreva(saudacao(nome,idade))
  }
}
