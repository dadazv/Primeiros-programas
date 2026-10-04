programa {
  funcao inicio() {
    real preco[] = {3.50,4.00,5.50,2.00,6.00}
    inteiro opc

    escreva("Digite um número: \n")
    leia(opc)

    escolha(opc)
    {
      caso 1:
        escreva("Preço: ",preco[opc-1]," R$ \n")
        pare
      caso 2:
        escreva("Preço: ",preco[opc-1]," R$ \n")
        pare
      caso 3:
        escreva("Preço: ",preco[opc-1]," R$ \n")
        pare
      caso 4:
        escreva("Preço: ",preco[opc-1]," R$ \n")
        pare
      caso 5:
        escreva("Preço: ",preco[opc-1]," R$ \n")
        pare
      caso contrario:
        escreva("Número inválido.")
        pare
    }
  }
}
