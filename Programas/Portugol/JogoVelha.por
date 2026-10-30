programa {
  funcao inicio() {
    cadeia jogo[3][3],opc
    inteiro col,lin
    para(inteiro z = 0;z < 3;z ++){
      para(inteiro a = 0;a < 3;a ++){
        jogo[z][a] = " "
      }
    }
    para(inteiro x = 0;x < 9;x ++){
      escreva("O ou X: \n")
      leia(opc)
      escreva("Digite a linha: \n")
      leia(lin)
      escreva("digite a coluna:  \n")
      leia(col)
      jogo[lin - 1][col -1] = opc
      para(inteiro o = 0;o < 3;o ++){
        para(inteiro i = 0;i < 3;i ++){
          escreva("[",jogo[o][i],"]")
        }
        escreva("\n")
      }
    }
  }
}