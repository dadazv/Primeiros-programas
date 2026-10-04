programa {
  funcao real mediar(real nota1,real nota2, real nota3){
    real media = (nota1 + nota2 + nota3)/3
    retorne media
  }
  funcao inicio() {
    real nota1,nota2,nota3

    escreva("Digite sua nota: \n")
    leia(nota1)
    escreva("Digite sua nota: \n")
    leia(nota2)
    escreva("Digite sua nota: \n")
    leia(nota3)

    escreva(mediar(nota1,nota2,nota3))
  }
}
