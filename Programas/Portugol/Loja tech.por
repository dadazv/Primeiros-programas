programa {
  funcao vazio Menu(){
    escreva("\n========== LOJA TECH ==========\n1 - Cadastrar produto\n2 - Cadastrar cliente\n3 - Realizar venda\n4 - Consultar produto\n5 - Relatório de estoque\n6 - Relatório de vendas\n7 - Relatório de clientes\n8 - Estatisticas da loja\n9 - Encerrar\nDigite a opção: \n")
  }
  funcao inicio() {
    real pre[50],sub = 0.0,Tgas[100],Mva = 0.0, Mve = 99999999.0,Mga = 0.0,Mge = 999999999.0,Tb = 0.0
    inteiro cod[50],est[50],ven[50],Tpro = 0,Tcli = 0,codC[100],ida[100],Tven = 0,Pma  = 0,Pme =0,opc = 0
    cadeia cli[100],cat[50],cpf[100],nom[50]
    enquanto(opc != 9){
      Menu()
      leia(opc)
      escolha(opc){
        caso 1:
          inteiro Qcad
          escreva("=== Cadastro de produtos ===\nDigite  a quantidade de cadastros: \n")
          leia(Qcad)
          se(Tpro + Qcad > 50 ou Tpro + Qcad <= 0){
            escreva("| Limite excedido.\n")
          }
          senao{
            para(inteiro i = 0;i < Qcad;i ++){
              se(Tpro < 50){
                logico repe = falso
                cod[Tpro] = Tpro + 1
                escreva("Digite a categoria: \n")
                leia(cat[Tpro])
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
          se(Qcli + Tcli <= 0 ou Qcli + Tcli > 100){
            escreva("| Quantidade inválida.\n")
          }
          senao{
            se(Tcli < 100){
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
                  escreva("Digite o CPF: \n")
                  leia(cpf[Tcli])
                  escreva("| Seu código é: ",codC[Tcli],"\n")
                  Tgas[Tcli] = 0.0
                  Tcli++
                }
              }
            }
          }
        pare
        caso 3:
          logico pag = verdadeiro
          real des = 0.0, Tot = 0.0, prc, tro, totalBruto = 0.0
          inteiro posC = -1, posP = -1, qtd, cC, cP, opP, qProd, itensPos[50], itensQtd[50], nItens = 0, res, dis
          escreva("=== Venda ===\nDigite o código do cliente: \n")
          leia(cC)
          para(inteiro b = 0; b < Tcli; b++){
            se(cC == codC[b]){
              posC = b
            }
          }
          se(posC == -1){
            escreva("| Código inválido.\n")
          }
          senao{
            escreva("Digite a quantidade de produtos: \n")
            leia(qProd)
            se(qProd <= 0 ou qProd > 50){
              escreva("| Quantidade inválida.\n")
            }
            senao{
              para(inteiro v = 0; v < qProd; v++){
                posP = -1
                escreva("Digite o código do produto: \n")
                leia(cP)
                para(inteiro c = 0; c < Tpro; c++){
                  se(cP == cod[c]){
                    posP = c
                  }
                }
                se(posP == -1){
                  escreva("| Código inválido.\n")
                }
                senao{
                  res = 0
                  para(inteiro k = 0; k < nItens; k++){
                    se(itensPos[k] == posP){
                      res = res + itensQtd[k]
                    }
                  }
                  dis = est[posP] - res
                  escreva("| Nome: ", nom[posP], "| Preço: ", pre[posP], "| Estoque: ", dis, "\nDigite a quantidade: \n")
                  leia(qtd)
                  se(qtd <= 0 ou qtd > dis){
                    escreva("| Quantidade inválida.\n")
                  }
                  senao{
                    sub = pre[posP] * qtd
                    totalBruto = totalBruto + sub
                    itensPos[nItens] = posP
                    itensQtd[nItens] = qtd
                    nItens = nItens + 1
                    escreva("| Subtotal atual: ", totalBruto, "\n")
                  }
                }
              }
              se(nItens == 0){
                escreva("| Nenhum produto na compra.\n")
              }
              senao{
                se(totalBruto <= 100){
                  des = 0.0
                }
                senao{
                  se(totalBruto <= 300){
                    des = 0.05
                  }
                senao{
                  se(totalBruto <= 500){
                    des = 0.10
                  }
                  senao{
                    des = 0.15
                  }
                }
              }
              se(ida[posC] > 60){
                des = des + 0.05
              }
              se(des > 0.20){
                des = 0.20
              }
              Tot = totalBruto - (totalBruto * des)
              escreva("| Subtotal: ", totalBruto, "\n| Desconto: ", totalBruto * des,"\n| Total: ", Tot, "\n")
              escreva("=== Pagamento ===\n1 - Dinheiro\n2 - PIX\n3 - Débito\n4 - Crédito\nEscolha: \n")
              leia(opP)
              escolha(opP){
                caso 1:
                  Tot = Tot - (Tot * 0.05)
                  escreva("| Total: ", Tot, "\nDigite o valor: \n")
                  leia(prc)
                  se(prc < Tot){
                    escreva("| Valor insuficiente.\n")
                    pag = falso
                  }
                  senao{
                    tro = prc - Tot
                    escreva("| Troco: ", tro, "\n")
                  }
                pare
                caso 2:
                  Tot = Tot - (Tot * 0.03)
                pare
                caso 3:
                  Tot = Tot
                pare
                caso 4:
                  Tot = Tot + (Tot * 0.05)
                pare
                caso contrario:
                  escreva("| Opção inválida.\n")
                  pag = falso
                pare
              }
              se(pag){
                Tven = Tven + 1
                Tb = Tb + totalBruto
                Tgas[posC] = Tgas[posC] + Tot
                para(inteiro i = 0; i < nItens; i++){
                  posP = itensPos[i]
                  qtd = itensQtd[i]
                  ven[posP] = ven[posP] + qtd
                  est[posP] = est[posP] - qtd
                  se(est[posP] <= 5){
                    escreva("Estoque baixo!\n| Produto: ", nom[posP], "\n| Estoque atual: ", est[posP], "\n")
                  }
                }
                se(Tot > Mva){
                  Mva = Tot
                }
                se(Tot < Mve){
                  Mve = Tot
                }
                escreva("\n| Venda realizada.\n")
                escreva("| Cliente: ", cli[posC], "\n")
                escreva("| CPF: ", cpf[posC], "\n")
                escreva("| Total: ", Tot, "\n")
                escreva("| Gasto total: ", Tgas[posC], "\n")
              }
              senao{
                escreva("| Pagamento inválido.\n")
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
              escreva("\n| Código: ",cod[Pp],"\n| Nome: ", nom[Pp], "\n| Preco: ", pre[Pp], "\n| Estoque: ", est[Pp], "\n| Categoria: ",cat[Pp])
            }
          }
        pare
        caso 5:
          inteiro qP = 0, estA = 0, estE = 2000000000, pA = 0, pE = 0
          real vEs = 0.0
          escreva("=== Estoque ===\n")
          se(Tpro <= 0){
            escreva("| Sem produtos.\n")
          }
          senao{
            para(inteiro x = 0; x < Tpro; x++){
              escreva("\nProduto ", cod[x], "\n| Código: ", cod[x], "\n| Nome: ", nom[x], "\n| Preco: ", pre[x], "\n| Estoque: ", est[x], "\n| Categoria: ", cat[x], "\n")
              qP = qP + est[x]
              vEs = vEs + pre[x] * est[x]
              se(est[x] > estA){ estA = est[x] 
                pA = x 
              }
              se(est[x] < estE){ estE = est[x] 
                pE = x 
              }
            }
            escreva("| Total de produtos: ", Tpro, "\n")
            escreva("| Total de unidades: ", qP, "\n")
            escreva("| Valor total: ", vEs, "\n")
            escreva("| Maior estoque: ", nom[pA], " - ", estA, "\n")
            escreva("| Menor estoque: ", nom[pE], " - ", estE, "\n")
          }
        pare
        caso 6:
          inteiro pma = 0, pme = 0, Me = 200000000, Ma = ven[0], Tve = 0, dv = 0
          real faT = 0.0, tic,bru,desT
          escreva("=== Relatório de vendas ===\n")
          se(Tpro <= 0){
            escreva("| Sem produtos.\n")
          }
          senao{
            para(inteiro m = 0; m < Tpro;m ++){
              escreva("\nProduto ",cod[m],"\n| Código: ",cod[m],"\n| Nome: ", nom[m], "\n| Preco: ", pre[m], "\n| Vendas: ", ven[m], "\n")
              Tve = Tve + ven[m]
              se(ven[m] > Ma){
                Ma = ven[m]
                pma = m
              }
              se(ven[m] < Me){
                Me = ven[m]
                pme = m
              }
              se(ven[m] > 0){
                dv = dv + 1 
              }
            }
            para(inteiro j = 0; j < Tcli; j ++){
              faT = faT + Tgas[j]
            }
            se(Tven > 0){
              tic = faT / Tven
            }
            senao{
              tic = 0.00
              Mve = 0.0
            }
            bru = Tb
            desT = bru - faT
            escreva("\n| Total de vendas: ",Tven,"\n| Mais vendido: ",nom[pma],"\n| Quantidades: ",Ma,"\n| Menos vendido: ",nom[pme],"\n| Quantidade: ",Me)
            escreva("| Total de itens vendidos: ", Tve, "\n")
            escreva("\n| Maior venda: ",Mva,"\n| Menor venda: ",Mve)
            escreva("\n| Ticket médio: ", tic, "\n")
            escreva("| Faturamento bruto: ", bru, "\n")
            escreva("| Faturamento líquido: ", faT, "\n")
            escreva("| Total de descontos: ", desT, "\n")
          }
        pare
        caso 7:
          real med = 0.0,fat = 0.0
          se(Tcli <= 0){
            escreva("| Nenhum cliente.\n")
          }
          senao{
            Mga = Tgas[0]
            Mge = Tgas[0]
            Pma = 0
            Pme = 0
            para(inteiro n = 0; n < Tcli; n ++){
              fat = fat + Tgas[n]
              se(Tgas[n] > Mga){ 
                Mga = Tgas[n]
                Pma = n 
              }
              se(Tgas[n] < Mge){ 
                Mge = Tgas[n]
                Pme = n 
              }
            }
            med = fat / Tcli
            escreva("=== Ranking dos clientes ===\n")
            escreva("Mais gastou: ", cli[Pma], " - ", Mga, "\n")
            escreva("Menos gastou: ", cli[Pme], " - ", Mge, "\n")
            escreva("Media: ", med, "\n")
            escreva("Quantidade: ", Tcli, "\n")
          }
        pare
        caso 8:
          escreva("=== Estatisticas da loja ===\n")
          se(Tpro <= 0){
            escreva("| Sem produtos.\n")
          }
          senao{
            inteiro Ma = ven[0], Me = ven[0], pMa2 = 0, pMe2 = 0, Tpro2 = 0, dvs = 0
            real fat2 = 0.0, mV = 0.0
            para(inteiro m = 0; m < Tpro; m++){
              Tpro2 = Tpro2 + ven[m]
              se(ven[m] > Ma){ 
                Ma = ven[m]
                pMa2 = m 
              }
              se(ven[m] < Me){ 
                Me = ven[m]
                pMe2 = m 
              }
              se(ven[m] > 0){ 
                dvs = dvs + 1 
              }
            }
            para(inteiro n = 0;n < Tcli; n++){
              fat2 = fat2 + Tgas[n]
            }
            se(Tven > 0){
              mV = fat2 / Tven
            }
            cadeia catMa = ""
            inteiro venCatMa = -1
            para(inteiro i = 0; i < Tpro; i++){
              inteiro somaCat = 0
              para(inteiro j = 0; j < Tpro; j++){
                se(cat[j] == cat[i]){
                  somaCat = somaCat + ven[j]
                }
              }
              se(somaCat > venCatMa){
                venCatMa = somaCat
                catMa = cat[i]
              }
            }
            cadeia cliMa = ""
            real gasMa = -1.0
            se(Tcli > 0){
              gasMa = Tgas[0]
              cliMa = cli[0]
              para(inteiro k = 0; k < Tcli; k++){
                se(Tgas[k] > gasMa){
                  gasMa = Tgas[k]
                  cliMa = cli[k]
                }
              }
            }
            escreva("| Categoria que mais vendeu: ", catMa, " - ", venCatMa, "\n")
            escreva("| Produto mais vendido: ", nom[pMa2], " - ", Ma, "\n")
            escreva("| Produto menos vendido: ", nom[pMe2], " - ", Me, "\n")
            escreva("| Maior venda: ", Mva, "\n")
            se(Tcli > 0){
              escreva("| Cliente que mais comprou: ", cliMa, " - ", gasMa, "\n")
            }
            senao{
              escreva("| Sem clientes.\n")
            }
            escreva("| Media das vendas: ", mV, "\n| Total de itens vendidos: ", Tpro2, "\n| Total de produtos diferentes vendidos: ", dvs, "\n")
          }
        pare
        caso 9:
          escreva("| Saindo...\n")
        pare
        caso contrario:
          escreva("| Opção inválida.\n")
        pare
      }
    }
  }
}
//I use Arch, btw.