programa {
  funcao inicio() {
    inteiro cod[5]
    real pre[5]
    inteiro qua[5]
    cadeia nom[5]
    inteiro Tpro = 0,opc = 0,cad
    enquanto(opc != 3){
      escreva("=== Loja ===\n")
      escreva("| 1# - Cadastrar.\n| 2# - Listar.\n| 3# - Sair.\n")
      leia(opc)
      escolha(opc){
        caso 1:
          escreva("=== Cadastro ===\n")
          escreva("| Quantos irá cadastrar? \n")
          leia(cad)
          se(Tpro + cad > 5){
            escreva("| Limite excedido.\n")
          }
          senao{
            para(inteiro i = 0;i < cad;i ++){
              se(Tpro < 5){
                cod[Tpro] = Tpro + 1
                escreva("| Digite o nome: \n")
                leia(nom[Tpro])
                logico repe = falso
                para(inteiro x = 0;x < Tpro; x ++){
                  se(nom[x] == nom[Tpro]){
                    repe = verdadeiro
                    pare
                  }
                }
                se(repe){
                  escreva("| Este produto já existe.\n")
                  i--
                }
                senao{
                  escreva("| Digite o preço: \n")
                  leia(pre[Tpro])
                  escreva("| Digite a quantidade: \n")
                  leia(qua[Tpro])
                  escreva("| O código do produto é: ",cod[Tpro],"\n")
                  Tpro++
                }
              }
              senao{
                escreva("| Limite excedido.")
                pare
              }
            }
          }
        pare
        caso 2:
          escreva("=== Listagem ===\n")
          se(Tpro == 0){
            escreva("| Nenhum produto.\n")
          }
          senao{
            para(inteiro a = 0;a < Tpro;a ++){
              escreva("Nome: ",nom[a],"| Preço: ",pre[a],"| Quantidade: ",qua[a],"| Código: ",cod[a],"\n")
            }
          }
        pare
        caso 3:
          escreva("| Saindo...\n")
        pare
      }
    }
  }
}