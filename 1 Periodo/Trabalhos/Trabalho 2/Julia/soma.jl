#=
Linguagem: Julia
•SomaNumero - Programa que lê dois números do usuário e imprima a soma desses números na tela.
=#

println("Escolha dois valores para serem somados:")

println("Valor 1:")
numero1 = readline()#leitura da string
numero1 = parse(Float64, numero1)#converção de string para float

println("Valor 2:")
numero2 = readline()
numero2 = parse(Float64, numero2)

soma = numero1 + numero2

println("O valor da soma entre ", numero1," e ", numero2, " é igual a ", soma)
