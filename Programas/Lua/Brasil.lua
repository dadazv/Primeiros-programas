function Dados(cap,pop,pib,idh,ex)
    print("Capital: "..cap.."\nPopulação: "..pop.."\nPIB: R$ "..pib.."\nIDH: "..idh.."\nExpectativa de vida: "..ex.." anos")
end
print("=== Brasil ===\n")
print("Digite a sigla do estado: ")
sig = io.read()
sigP = string.upper(sig)
if (sigP == "AC") then
    print("=== Acre ===\n")
    cap,pop,pib,idh,ex = "Rio Branco", 830000, 25400, 0.719, 71.5
    Dados(cap,pop,pib,idh,ex)
    -- Acre
else
    if (sigP == "AL") then
        print("=== Alagoas ===\n")
        cap,pop,pib,idh,ex = "Maceió", 3100000, 23900, 0.684, 72
        Dados(cap,pop,pib,idh,ex)
        -- Alagoas
    else
        if (sigP == "AP") then
            print("=== Amapá ===\n")
            cap,pop,pib,idh,ex = "Macapá", 730000, 26800, 0.740, 74.3
            Dados(cap,pop,pib,idh,ex)
            -- Amapá
        else
            if (sigP == "AM") then
                print("=== Amazonas ===\n")
                cap,pop,pib,idh,ex = "Manaus", 3900000, 32200, 0.733, 72.1
                Dados(cap,pop,pib,idh,ex)
                -- Amazonas
            else
                if (sigP == "BA") then
                    print("=== Bahia ===\n")
                    cap,pop,pib,idh,ex = "Salvador", 14100000, 23500, 0.713, 73.5
                    Dados(cap,pop,pib,idh,ex)
                    -- Bahia
                else
                    if (sigP == "CE") then
                        print("=== Ceará ===\n")
                        cap,pop,pib,idh,ex = "Fortaleza", 8800000, 21400, 0.734, 74.1
                        Dados(cap,pop,pib,idh,ex)
                        -- Ceará
                    else
                        if (sigP == "DF") then
                            print("=== Distrito Federal ===\n")
                            cap,pop,pib,idh,ex = "Brasília", 2800000, 92700, 0.814, 78.1
                            Dados(cap,pop,pib,idh,ex)
                            -- Distrito Federal
                        else
                            if (sigP == "ES") then
                                print("=== Espiríto Santo ===\n")
                                cap,pop,pib,idh,ex = "Vitória", 3800000, 41200, 0.772, 79.1
                                Dados(cap,pop,pib,idh,ex)
                                -- Espiríto Santo
                            else
                                if (sigP == "GO") then
                                    print("=== Góias ===\n")
                                    cap,pop,pib,idh,ex = "Goiânia", 7000000, 37400, 0.740, 74.5
                                    Dados(cap,pop,pib,idh,ex)
                                    -- Góias
                                else
                                    if (sigP == "MA") then
                                        print("=== Maranhão ===\n")
                                        cap,pop,pib,idh,ex = "São Luís", 6800000, 17500, 0.676, 71.4
                                        Dados(cap,pop,pib,idh,ex)
                                        -- Maranhao
                                    else
                                        if (sigP == "MT") then
                                            print("=== Mato Grosso ===\n")
                                            cap,pop,pib,idh,ex = "Cuiabá", 3600000, 65400, 0.774, 74.9
                                            Dados(cap,pop,pib,idh,ex)
                                            -- Mato Grosso
                                        else
                                            if (sigP == "MS") then
                                                print("=== Mato Grosso do Sul ===\n")
                                                cap,pop,pib,idh,ex = "Campo grande", 2700000, 58100, 0.742, 76.1
                                                Dados(cap,pop,pib,idh,ex)
                                                -- Mato grosso do sul
                                            else
                                                if (sigP == "MG") then
                                                    print("=== Minas Gerais ===\n")
                                                    cap,pop,pib,idh,ex = "Belo Horizonte", 20500000, 40500, 0.774, 77.5
                                                    Dados(cap,pop,pib,idh,ex)
                                                    -- Minas gerais
                                                else
                                                    if (sigP == "PA") then
                                                        print("=== Pará ===\n")
                                                        cap,pop,pib,idh,ex = "Belém", 8100000, 31900, 0.690, 72.3
                                                        Dados(cap,pop,pib,idh,ex)
                                                        -- Pará
                                                    else
                                                        if (sigP == "PB") then
                                                            print("=== Paraíba ===\n")
                                                            cap,pop,pib,idh,ex = "João Pessoa", 4000000, 19300, 0.772, 73.6
                                                            Dados(cap,pop,pib,idh,ex)
                                                            -- Paraiba
                                                        else
                                                            if(sigP == "PR") then
                                                                print("=== Paraná ===\n")
                                                                cap,pop,pib,idh,ex = "Curitiba", 11400000, 49800, 0.769, 77.4
                                                                Dados(cap,pop,pib,idh,ex)
                                                                -- Parana
                                                            else
                                                                if(sigP == "PE") then
                                                                    print("=== Pernambuco ===\n")
                                                                    cap,pop,pib,idh,ex = "Recife", 9000000, 22800, 0.719, 74.3
                                                                    Dados(cap,pop,pib,idh,ex)
                                                                    -- Pernambuco
                                                                else
                                                                    if (sigP == "PI") then
                                                                        print("=== Piauí ===\n")
                                                                        cap,pop,pib,idh,ex = "Teresina", 3200000, 21100, 0.713, 71.6
                                                                        Dados(cap,pop,pib,idh,ex)
                                                                        -- Piaui
                                                                    else
                                                                        if (sigP == "RJ") then
                                                                            print("=== Rio de janeiro ===\n")
                                                                            cap,pop,pib,idh,ex = "Rio de Janeiro", 16000000, 54400, 0.762, 76.5
                                                                            Dados(cap,pop,pib,idh,ex)
                                                                            -- Rio de janeiro
                                                                        else
                                                                            if (sigP == "RN") then
                                                                                print("=== Rio Grande do Norte ===\n")
                                                                                cap,pop,pib,idh,ex = "Natal", 3300000, 23300, 0.728, 76
                                                                                Dados(cap,pop,pib,idh,ex)
                                                                                -- Rio grande do norte
                                                                            else
                                                                                if (sigP == "RS") then
                                                                                    print("=== Rio Grande do Sul ===\n")
                                                                                    cap,pop,pib,idh,ex = "Porto Alegre", 10900000, 50700, 0.771, 77.8
                                                                                    Dados(cap,pop,pib,idh,ex)
                                                                                    -- Rio grande do sul
                                                                                else
                                                                                    if (sigP == "RO") then
                                                                                        print("=== Rondônia ===\n")
                                                                                        cap,pop,pib,idh,ex = "Porto Velho", 1600000, 35800, 0.700, 71.7
                                                                                        Dados(cap,pop,pib,idh,ex)
                                                                                        -- Rondônia
                                                                                    else
                                                                                        if (sigP == "RR") then
                                                                                            print("=== Roraima ===\n")
                                                                                            cap,pop,pib,idh,ex = "Boa Vista", 636000, 27900, 0.707, 71.8
                                                                                            Dados(cap,pop,pib,idh,ex)
                                                                                            -- Roraima
                                                                                        else
                                                                                            if (sigP == "SP") then
                                                                                                print("=== São Paulo ===\n")
                                                                                                cap,pop,pib,idh,ex = "São Paulo", 44400000, 58300, 0.783, 78.4
                                                                                                Dados(cap,pop,pib,idh,ex)
                                                                                                -- São paulo
                                                                                            else
                                                                                                if (sigP == "SE") then
                                                                                                    print("=== Sergipe ===\n")
                                                                                                    cap,pop,pib,idh,ex = "Aracaju", 2200000, 22100, 0.702, 73.1
                                                                                                    Dados(cap,pop,pib,idh,ex)
                                                                                                    -- Sergipe
                                                                                                else
                                                                                                    if (sigP == "TO") then
                                                                                                        print("=== Tocantins ===\n")
                                                                                                        cap,pop,pib,idh,ex = "Palmas", 1500000, 32100, 0.731, 73.1
                                                                                                        Dados(cap,pop,pib,idh,ex)
                                                                                                        -- Tocantins
                                                                                                    else
                                                                                                        if (sigP == "SC") then
                                                                                                            print("=== Santa Catarina ===\n")
                                                                                                            cap,pop,pib,idh,ex = "Florianópolis", 7600000, 56600, 0.792, 79.4
                                                                                                            Dados(cap,pop,pib,idh,ex)
                                                                                                            -- Santa Catarina
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end