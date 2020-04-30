=begin
Escreva uma função que diz se o parâmetro de entrada é par ou ímpar.
=end

# Definindo uma função que recebe um número de parâmetro, retorna verdadeiro se o número for par e falso se ele for ímpar
def isPar?(num)
    return (num % 2 == 0)
end

print("Digite um número: ")
num = gets.to_i

if isPar?(num)
    puts "#{num} é par"
else
    puts "#{num} é ímpar"
end