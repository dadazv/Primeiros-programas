print("=== Calculadora ===\n")
print("Digite um número: ")
num1 = tonumber(io.read())
print("Digite um número: ")
num2 = tonumber(io.read())
print("Escolha a operação: ")
print("1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão")
op = tonumber(io.read())
print("=== Resultado ===\n")
if (op == 4) and (num1 == 0) then
    print("Divisão por zero inválida.")
else
    if (op > 4) or (op <= 0) then
        print("Opção inválida.")
    else
        if (op == 1) then
            print(num1.." + "..num2.." = "..num1 + num2)
        else
            if (op == 2) then
                print(num1.." - "..num2.." = "..num1 - num2)
            else
                if (op == 3) then
                    print(num1.." x "..num2.." = "..num1 * num2)
                else
                    if (op == 4) then
                        print(num1.." / "..num2.." = "..num1 / num2)
                    end
                end
            end
        end
    end
end