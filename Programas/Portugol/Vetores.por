programa {
  funcao inicio() {
    real preco[] = {1.5,2.5,3.5}
    inteiro opc,produtos[] = {1,2}

    escreva("Digite o código do produto: \n")
    leia(opc)

    escolha(opc)
    {
      caso 1:
        escreva("Produto: ",produtos[opc-1],"\n")
        escreva("Preço: ",preco[opc-1],"\n")
      pare
      caso 2:
        escreva("Produto: ",produtos[opc-1],"\n")
        escreva("Preço: ",preco[opc-1],"\n")
      pare
      caso 3:
        escreva("Produto: ",produtos[opc-1],"\n")
        escreva("Preço: ",preco[opc-1],"\n")
      pare
    }
  }
}