senha = 1234
print("Digite sua senha: ")
Tsenha = tonumber(io.read())
while(Tsenha ~= senha)do
    print("Senha incorreta.")
    print("Digite sua senha: ")
    Tsenha = tonumber(io.read())
end
print("Senha correta.")