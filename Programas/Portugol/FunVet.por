programa {

  funcao real Media(real notas[],inteiro tam){
    real soma = 0.0
    para(inteiro i = 0;i < tam;i ++){
      soma = soma + notas[i]
    }
    real media = soma / tam
    retorne media
    }
  funcao inicio(){
    real notas[10]
    inteiro tam = 10
    
    para(inteiro i = 0;i < tam;i ++){
      escreva("Digite sua nota ",i + 1,": \n")
      leia(notas[i])      
    }
    escreva("Média: ",Media(notas,tam),"\n")
    escreva("=== Notas cadastradas ===\n")
    para(inteiro i = 0;i < tam;i ++){
      escreva(i + 1," Nota: ",notas[i],"\n")
    }
  }
}
