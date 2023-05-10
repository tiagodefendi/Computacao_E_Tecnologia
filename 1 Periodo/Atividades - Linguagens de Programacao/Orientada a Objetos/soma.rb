=begin
Linguagem: Ruby
Paradigma = Orientada a Objetos (POO)
•SomaNumero - Programa que lê dois números do usuário e imprima a soma desses números na tela.
=end

class Soma
  def self.soma(valor1, valor2)
    valor1 + valor2
  end
end

puts "Escolha um valor para o 1º número: "
numero1 = gets.chomp.to_f#leitura da string com o gets, e conversão para float com o to_f

puts "Escolha um valor para o 2º número: "
numero2 = gets.chomp.to_f

puts "O valor da soma entre #{numero1} e #{numero2} resulta em #{Soma.soma(numero1, numero2)}"
