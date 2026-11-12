programa {
  funcao inicio() {
    inteiro mapa[4][4] ={
      {5,12,3,8}, 
      {7,2,15,4}, 
      {9,6,1,11},
      {14,3,10,5}  
    }
    inteiro Ma = 0,Me = mapa[0][0],soma = 0,M10 = 0,Pma[2],Pme[2],Mq = 0,Sq = 0,PMq = -1
    
    para(inteiro o = 0;o < 4;o ++){
      para(inteiro i = 0;i < 4;i ++){
        soma = soma + mapa[o][i]
        se(mapa[o][i] > Ma){
          Ma = mapa[o][i]
          Pma[0] = o
          Pma[1] = i
        }
        se(mapa[o][i] < Me){
          Me = mapa[o][i]
          Pme[0] = o
          Pme[1] = i
        }
        se(mapa[o][i] > 10){
          M10 = M10 + 1
        }
      }
    }
    para(inteiro x = 0;x < 4; x ++){
      Sq = 0
      Sq = Sq + mapa[x][0] + mapa[x][1] + mapa[x][2] + mapa[x][3]
      se(Sq > Mq){
        Mq = Sq
        PMq = x
      }
    }
    escreva("\nMapa: \n")
    para(inteiro d = 0;d < 4;d ++){
      para(inteiro v = 0;v < 4;v ++){
        escreva("[",mapa[d][v],"]")
      }
      escreva("\n")
    }
    escreva("\nMaior quantidade de moedas: ",Ma,"\nPosição: ",Pma[0] + 1,",",Pma[1] + 1)
    escreva("\nMenor quantidade de moedas: ",Me,"\nPosição: ",Pme[0] + 1,",",Pme[1] + 1)
    escreva("\nMais de 10 moedas: ",M10)
    escreva("\nSomatória: ",soma)
    escreva("\nQuantidade maior total: ",Mq,"\nLinha: ",PMq + 1)
  }
}
