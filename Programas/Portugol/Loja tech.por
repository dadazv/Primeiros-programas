programa {
  funcao vazio Menu(){
    escreva("========== LOJA TECH ==========\n1 - Cadastrar produto\n2 - Cadastrar cliente\n3 - Realizar venda\n4 - Ver estoque\n5 - Sair\n")
    escreva("Digite a opção: \n")
  }
  funcao inicio() {
    cadeia nom[20]
    real pre[20]
    inteiro cod[20]
    inteiro est[20]
    inteiro ven[20]
    inteiro Tpro = 0,Tcli = 0

    cadeia cli[20]
    inteiro codC[20]
    inteiro ida[20]
    real Tgas[20]

    inteiro opc = 0

    enquanto(opc != 5){
      Menu()
      leia(opc)
      escolha(opc){
        caso 1:
          inteiro Qcad
          escreva("=== Cadastro de produtos ===\n")
          escreva("Digite  a quantidade de cadastros: \n")
          leia(Qcad)
          se(Tpro + Qcad > 20 ou Tpro + Qcad <= 0){
            escreva("| Limite excedido.\n")
          }
          senao{
            para(inteiro i = 0;i < Qcad;i ++){
              se(Tpro < 20){
                logico repe = falso
                cod[Tpro] = Tpro + 1
                escreva("Digite o nome: \n")
                leia(nom[Tpro])
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
                  escreva("Digite o preço: \n")
                  leia(pre[Tpro])
                  se(pre[Tpro] <= 0){
                    escreva("| Preço inválido.\n")
                    i--
                  }
                  senao{
                    escreva("Digite a quantidade: \n")
                    leia(est[Tpro])
                    se(est[Tpro] < 0){
                      escreva("| Estoque inválido.\n")
                      i--
                    }
                    senao{
                      escreva("| O código do produto é: ",cod[Tpro],"\n")
                      ven[Tpro] = 0
                      Tpro++
                    }
                  }
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
          inteiro Qcli
          escreva("=== Cadastro de clientes ===\n")
          escreva("Digite a quantidade de clientes: \n")
          leia(Qcli)
          se(Qcli + Tcli <= 0 ou Qcli + Tcli > 20){
            escreva("| Quantidade inválida.\n")
          }
          senao{
            se(Tcli < 20){
              para(inteiro x = 0;x < Qcli;x ++){
                codC[Tcli] = Tcli + 1
                escreva("Digite o nome: \n")
                leia(cli[Tcli])
                escreva("Digite a idade: \n")
                leia(ida[Tcli])
                se(ida[Tcli] < 0){
                  escreva("| Idade inválida.\n")
                  x--
                }
                senao{
                  escreva("| Seu código é: ",codC[Tcli],"\n")
                  Tgas[Tcli] = 0.0
                  Tcli++
                }
              }
            }
          }
        pare
        caso 3:
          inteiro posC = -1,posP = -1,qtd,cC,cP
          escreva("=== Venda ===\n")
          escreva("Digite o código do cliente: \n")
          leia(cC)
          para(inteiro b = 0;b < Tcli;b ++){
            se(cC == codC[b]){
              posC = b
              escreva("Digite o código do produto: \n")
              leia(cP)
              para(inteiro c =0;c < Tpro;c ++){
                se(cP == cod[c]){
                  posP = c
                  escreva("Digite a quantidade: \n")
                  leia(qtd)
                  se(qtd <= 0 ou qtd > est[posP]){
                    escreva("| Quantidade inválida.\n")
                  }
                  senao{
                    ven[posP] = ven[posP] + qtd
                    est[posP] = est[posP] - qtd
                    Tgas[posC] = Tgas[posC] + (pre[posP] * qtd)
                    escreva("| Venda realizada.\n")
                    escreva("| Cliente: ",cli[posC],"\n")
                    escreva("| Produto: ", nom[posP], "\n")
                    escreva("| Quantidade: ", qtd, " x ", pre[posP], " = ", pre[posP]*qtd, "\n")
                    escreva("| Estoque final: ", est[posP], "\n")
                    escreva("| Gasto total: ", Tgas[posC], "\n")
                  }
                }
              }
            }
          }
        pare
        caso 4:
          inteiro Cp,Pp = -1
          escreva("=== Estoque ===\n")
          se(Tpro <= 0){
            escreva("| Sem produtos.\n")
          }
          senao{
            escreva("Digite o código do produto: \n")
            leia(Cp)
            para(inteiro z = 0; z < Tpro;z ++){
              se(Cp == cod[z]){
                Pp = z
              }
            }
            se(Pp == -1){
              escreva("| Codigo invalido.\n")
            }
            senao{
              escreva("\n| Nome: ", nom[Pp], "\n| Preco: ", pre[Pp], "\n| Estoque: ", est[Pp], "\n")
            }
          }
        pare
        caso 5:
          escreva("| Saindo...\n")
        pare
        caso contrario:
          escreva("| Opção inválida.\n")
        pare
      }
    }
  }
}