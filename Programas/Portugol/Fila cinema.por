programa {
  funcao inicio() {
    cadeia nome
    inteiro idade

    escreva("Digite seu nome: \n")
    leia(nome)
    faca{
      escreva("Digite sua idade: \n")
      leia(idade)
      se(idade < 18){
        escreva("Passagem proibida, ",nome,"\n")
      }
      senao{
        se(idade >= 18){
          escreva("Passagem permitida, ",nome,"\n")
        }
      }
    }enquanto(idade != 0)
    escreva("Fila encerrada.")
  }
}