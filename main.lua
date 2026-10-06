--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habilidades
    Furtividade
    Explosão

===================================================
|
| CREEPER
| Um monstro muito sagaz que explode na sua cara.
|
| Som: Tssssss
|
| Atributos:
|   Ataque: ########00
|   Defesa: ###0000000
|   ...
|
===================================================


]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")


-- Criatura 

local nome = "CREEPER"
local descricao = "Monstro explosivo!"
local horarioPreferido = "Noite"
local emoji = "💣"
local som = "Tsssss"


-- Atributos

local ataqueAtributo = 10
local defesAtributo = 1
local vidaAtributo = 5
local velocidadeAtributo = 7
local inteligenciaAtributo = 2

local function getBarraProgresso(atributo)
    local estrela = "🟪"
    local vasio = "⬛"

    local barra = ""
    for i = 1, 10, 1 do
        if i <= atributo then
            barra = barra .. estrela
        else
            barra = barra .. vasio
        end
    end

    return barra
end

local function completarLinha(tamanho, dado, informacao)
    local tamanhoDado = #dado
    
    local vez = tamanho - informacao - tamanhoDado -1
    local retorno = ''
    for i = 1, vez, 1 do
        retorno = retorno .. " "
    end
    return retorno.."|"
end

local dez = "aaaaaaaaaa"

print("================================================")
print("|"..completarLinha(48,"",1))
print("| "..nome..completarLinha(48,nome,2))
print("| "..descricao..completarLinha(48,descricao,2))
print("|"..completarLinha(48,"",1))
print("| Som : "..som..completarLinha(48,som,8))
print("| Emoji : "..emoji..completarLinha(48,emoji,8))
print("| Horario Preferido : "..horarioPreferido..completarLinha(48,horarioPreferido,22))
print("|"..completarLinha(48,"",1))
print("| ATributos : "..completarLinha(48,"",14))
print("|    Ataque :      "..getBarraProgresso(2))
print("|    Defesa :      "..getBarraProgresso(defesAtributo))
print("|    Vida:         "..getBarraProgresso(vidaAtributo))
print("|    Inteligência: "..getBarraProgresso(inteligenciaAtributo))
print("|    Velocidade :  "..getBarraProgresso(velocidadeAtributo))
print("|"..completarLinha(48,"",1))
print("================================================")

