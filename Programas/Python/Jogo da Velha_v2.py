jogo = [
    ["","",""],
    ["","",""],
    ["","",""]
]
pon = [
    [0,0,0],
    [0,0,0],
    [0,0,0]
]
def Vencer():
    for a in range(3):
        soma_ver = pon[a][0] + pon[a][1] + pon[a][2]
        if soma_ver == 3:
            return "x"
        elif soma_ver == 12:
            return "o"
    for b in range(3):
        soma_hori = pon[0][b] + pon[1][b] + pon[2][b]
        if soma_hori == 3:
            return "x"
        elif soma_hori == 12:
            return "o"
    soma_dia1 = pon[0][0] + pon[1][1] + pon[2][2]
    if soma_dia1 == 3:
        return "x"
    if soma_dia1 == 12:
        return "o"
    soma_dia2 = pon[0][2] + pon[1][1] + pon[2][0]
    if soma_dia2 == 3:
        return "x"
    if soma_dia2 == 12:
        return "o"
    return None
print("=== Jogo da velha ===")
for i in range(9):
    lin = int(input("Digite a linha: \n")) - 1
    col = int(input("Digite a coluna: \n")) - 1
    opc = input("Digite x ou o: \n")
    jogo[lin][col] = opc
    if opc == "x":
        pon[lin][col] = 1
    else:
        pon[lin][col] = 4
    for x in range(3):
        for y in range(3):
            print("[",jogo[x][y],"]",end = "")
        print()
    resultado = Vencer()
    if resultado == "x":
        print("X ganhou!\a")
        break
    elif resultado == "o":
        print("O venceu!\a")
        break
print("=== Fim de jogo ===")