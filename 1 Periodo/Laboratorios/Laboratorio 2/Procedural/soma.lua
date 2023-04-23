--[[
Linguagem: Lua
Paradigma: Procedural
•SomaNumero - Programa que lê dois números do usuário e imprima a soma desses números na tela.
--]]

print("Escolha um valor para o 1º número: ")
local numero1 = io.read("*f") -- leitura da string com o io.read(), leitura de um número flutuante com o especificador "*f"
print("Escolha um valor para o 1º número: ")
local numero2 = io.read("*f")

local soma = numero1 + numero2

print(string.format("O valor da soma entre %g e %g resulta em %g", numero1, numero2, soma))
