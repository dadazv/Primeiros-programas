nome = input("Digite seu nome: \n")
nasc = int(input("Digite seu ano de nascimento: \n"))

def idade(nasc):
    calc = 2026 - nasc
    return calc
    
def saudar(nome,calc):
    print(f"Bom dia {nome}, Você tem {calc} anos.")

calc = idade(nasc)

idade(nasc)
saudar(nome,calc)