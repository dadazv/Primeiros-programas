dia = 0
repeat
    print("Digite a temperatura de hoje: ")
    temp = tonumber(io.read())
    if(temp < 18)then
        print("Está frio.")
    else
        if(temp > 18)and(temp < 28)then
            print("Está agrádavel.")
        else
            print("Está quente.")
        end
    end
    dia = dia + 1
until(dia == 7)