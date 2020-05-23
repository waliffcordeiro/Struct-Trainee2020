require_relative './lib/verifica_num.rb'

def divisor?(divisor, num)
  num % divisor == 0 ? true : false
end

num = 0
print 'Insira um número: '

loop do
  num = gets
  break if num.numero_positivo?
  print 'Entrada inválida, insira um número inteiro positivo: '
end

num = num.to_i

divisores = []

for i in 1..num
  divisor?(i, num) ? divisores << i : nil 
end

qtdDivisores = divisores.count

if qtdDivisores <= 2
  puts "#{num} é primo!"
else
  puts "#{num} não é primo, pois tem #{qtdDivisores} divisores: #{divisores.join(', ')}"
end
