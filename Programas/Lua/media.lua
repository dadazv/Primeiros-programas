function media(n1,n2,n3)
    local media = (n1 + n2 + n3)/3
    return media
end
print("Digite sua nota: ")
n1 = tonumber(io.read())
print("Digite sua nota: ")
n2 = tonumber(io.read())
print("Digite sua nota: ")
n3 = tonumber(io.read())

print("Sua média foi: ",media(n1,n2,n3))
if(media(n1,n2,n3) > 6)then
    print("Você passou.")
else
    if(media(n1,n2,n3) < 6)then
        print("Você reprovou.")
    else
        print("Recuperação.")
    end
end