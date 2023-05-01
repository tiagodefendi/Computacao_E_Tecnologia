#=
Linguagem: Julia
Paradigma = Funcional
•SomaNumero - Programa que lê dois números do usuário e imprima a soma desses números na tela.
=#

function soma(valor1, valor2)
    return valor1 + valor2
end

println("Escolha um valor para o 1º número: ")
numero1 = parse(Float64, readline())#leitura da string com readline(), e converção para float com parse()

println("Escolha um valor para o 2º número: ")
numero2 = parse(Float64, readline())


println("O valor da soma entre $numero1 e $numero2 resulta em ", soma(numero1, numero2))
