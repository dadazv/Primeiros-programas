print("=== Tabuada Completa ===\n")
print("Digite seu número: ")
num = tonumber(io.read())
print("=== Tabuadas ===\n")
print("1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\nEscolha a tabuada: ")
tab = tonumber(io.read())
print("=== Resultado ===\n")
if (tab <= 0) or (tab > 4) then
    print("Escolha inválida!")
else
    if (tab == 4) and (num <= 0) then
        print("Divisão inválida!")
    else
        if (tab == 1) then
            for i = 1, 10 do
                print(num.." + "..i.." = "..num + i)
            end
        else
            if (tab == 2) then
                for i = 1, 10 do
                    print(num.." - "..i.." = "..num - i)
                end
            else
                if (tab == 3) then
                    for i = 1, 10 do
                        print(num.." x "..i.." = "..num * i)
                    end
                else
                    if (tab == 4) then
                        for i = 1, 10 do
                            print(num.." / "..i.." = "..num / i)
                        end
                    end
                end
            end
        end
    end
end