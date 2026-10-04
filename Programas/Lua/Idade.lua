print("Digite seu nome: ")
nome = io.read()
print("Digite sua idade: ")
idade = tonumber(io.read())
if(idade > 18)then
    print("Você é de maior")
else
    if(idade < 18)then
        print("Você é de menor")
    end
end