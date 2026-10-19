aluno = {}
aluno["nome"] = input("Digite seu nome: \n").lower()
aluno["idade"] = int(input("Digite sua idade: \n"))
aluno["estado"] = input("Digite seu estado: \n").upper()

if(aluno["estado"] == "PE"):
    print("Dança o passinho do Jamal aí.")
else:
    print(f"Cadastro em {aluno["estado"]} feita com sucesso.")