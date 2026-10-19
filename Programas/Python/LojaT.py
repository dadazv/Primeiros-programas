cli = input("Digite seu nome: \n")
print("=== Loja Tech ===\n")
print("#1 - Formatação de computador.\n")
print("#2 - Limpeza preventiva.\n")
print("#3 - Instalaçâo de software.\n")
print("#4 - Upgrade de memória RAM.\n")
print("#5 - Diagnóstico técnicco.\n")
cod = int(input("Escolha o código do serviço: \n"))
if(cod > 5)or(cod <= 0):
    print("Código inválido.\n")
else:
    qEqui = int(input("Digite a quantidade de equipamentos: \n"))
    if(qEqui <= 0):
        print("Quantidade inválida.\n")
    else:
        preT = 0
        sub = 0
        preU = 0
        desT = 0
        urgT = 0
        desPT = 0
        erro = False
        match cod:
            case 1:
                print("=== Formatação de computador ===\n")
                preU = 120
                sub = preU * qEqui
                if(qEqui >= 3):
                    des = 0.10
                    desT = desT + (sub * des)
                    preT = sub - (sub * des)
                else:
                    preT = preU * qEqui
                print("É urgente?\n")
                print("#1 - Não.\n")
                print("#2 - Sim.\n")
                urg = int(input("Escolha a opção: \n"))
                if(urg > 2)or(urg <= 0):
                    print("Escolha inválida.\n")
                    erro = True
                else:
                    if(urg == 2):
                        preT = preT + (30 * qEqui)
                        urgT = 30 * qEqui
                    print("Qual forma de pagamento?\n")
                    print("#1 - Pix.\n")
                    print("#2 - Cartão.\n")
                    pag = int(input("Digite a forma de pagamento: \n"))
                    if(pag > 2)or(pag <= 0):
                        print("Pagamento inválido.\n")
                        erro = True
                    else:
                        if(pag == 1):
                            desP = 0.05
                            desPT = desPT + (preT * desP)
                            preT = preT - (preT * desP)
            case 2:
                print("=== Limpeza preventiva ===\n")
                preU = 80
                sub = preU * qEqui
                if(qEqui >= 4):
                    des = 0.15
                    desT = desT + (sub * des)
                    preT = sub - (sub * des)
                else:
                    preT = preU * qEqui
                print("É urgente?\n")
                print("#1 - Não.\n")
                print("#2 - Sim.\n")
                urg = int(input("Escolha a opção: \n"))
                if(urg > 2)or(urg <= 0):
                    print("Escolha inválida.\n")
                    erro = True
                else:
                    if(urg == 2):
                        preT = preT + (30 * qEqui)
                        urgT = 30 * qEqui
                    print("Qual forma de pagamento?\n")
                    print("#1 - Pix.\n")
                    print("#2 - Cartão.\n")
                    pag = int(input("Digite a forma de pagamento: \n"))
                    if(pag > 2)or(pag <= 0):
                        print("Pagamento inválido.\n")
                        erro = True
                    else:
                        if(pag == 1):
                            desP = 0.05
                            desPT = desPT + (preT * desP)
                            preT = preT - (preT * desP)
            case 3:
                print("=== Instalaçâo de software ===\n")
                preU = 50
                sub = preU * qEqui
                if(qEqui >= 5):
                    des = 0.20
                    desT = desT + (sub * des)
                    preT = sub - (sub * des)
                else:
                    preT = preU * qEqui
                print("É urgente?\n")
                print("#1 - Não.\n")
                print("#2 - Sim.\n")
                urg = int(input("Escolha a opção: \n"))
                if(urg > 2)or(urg <= 0):
                    print("Escolha inválida.\n")
                    erro = True
                else:
                    if(urg == 2):
                        preT = preT + (30 * qEqui)
                        urgT = 30 * qEqui
                    print("Qual forma de pagamento?\n")
                    print("#1 - Pix.\n")
                    print("#2 - Cartão.\n")
                    pag = int(input("Digite a forma de pagamento: \n"))
                    if(pag > 2)or(pag <= 0):
                        print("Pagamento inválido.\n")
                        erro = True
                    else:
                        if(pag == 1):
                            desP = 0.05
                            desPT = desPT + (preT * desP)
                            preT = preT - (preT * desP)
            case 4:
                print("=== Upgrade de memória RAM ===\n")
                preU = 100
                sub = preU * qEqui
                if(qEqui >= 2):
                    des = 0.05
                    desT = desT + (sub * des)
                    preT = sub - (sub * des)
                else:
                    preT = preU * qEqui
                print("É urgente?\n")
                print("#1 - Não.\n")
                print("#2 - Sim.\n")
                urg = int(input("Escolha a opção: \n"))
                if(urg > 2)or(urg <= 0):
                    print("Escolha inválida.\n")
                    erro = True
                else:
                    if(urg == 2):
                        preT = preT + (30 * qEqui)
                        urgT = 30 * qEqui
                    print("Qual forma de pagamento?\n")
                    print("#1 - Pix.\n")
                    print("#2 - Cartão.\n")
                    pag = int(input("Digite a forma de pagamento: \n"))
                    if(pag > 2)or(pag <= 0):
                        print("Pagamento inválido.\n")
                        erro = True
                    else:
                        if(pag == 1):
                            desP = 0.05
                            desPT = desPT + (preT * desP)
                            preT = preT - (preT * desP)
            case 5:
                print("=== Upgrade de memória RAM ===\n")
                preU = 40
                sub = preU * qEqui
                if(qEqui >= 2):
                    des = 0
                    desT = desT + (sub * des)
                    preT = sub - (sub * des)
                else:
                    preT = preU * qEqui
                print("É urgente?\n")
                print("#1 - Não.\n")
                print("#2 - Sim.\n")
                urg = int(input("Escolha a opção: \n"))
                if(urg > 2)or(urg <= 0):
                    print("Escolha inválida.\n")
                    erro = True
                else:
                    if(urg == 2):
                        preT = preT + (30 * qEqui)
                        urgT = 30 * qEqui
                    print("Qual forma de pagamento?\n")
                    print("#1 - Pix.\n")
                    print("#2 - Cartão.\n")
                    pag = int(input("Digite a forma de pagamento: \n"))
                    if(pag > 2)or(pag <= 0):
                        print("Pagamento inválido.\n")
                        erro = True
                    else:
                        if(pag == 1):
                            desP = 0.05
                            desPT = desPT + (preT * desP)
                            preT = preT - (preT * desP)
            case _:
                print("Código inválido.")
        if(erro):
            print("")
        else:
            print("=== Orçamento ===\n")
            print(f"Cliente: {cli}\n")
            print(f"Serviço escolhido: {cod}\n")
            print(f"Quantidade de equipamentos: {qEqui}\n")
            print(f"Preço por equipamento: {preU}\n")
            print(f"Subtotal: {sub}\n")
            print(f"Desconto por quantidade: {desT}\n")
            print(f"Acréscimo por urgência: {urgT}\n")
            print(f"Desconto por pagamento: {desPT}\n")
            print(f"Valor final: {preT}\n")