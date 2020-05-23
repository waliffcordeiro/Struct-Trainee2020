require_relative './lib/verifica_num.rb'

def fibonacci(n)
  if n <= 2
    return 1
  end

  return fibonacci(n - 1) + fibonacci(n - 2)
end

num = 0
print 'Insira um número: '

loop do
  num = gets
  break if num.numero_positivo?
  print 'Entrada inválida, insira um número inteiro positivo: '
end

num = num.to_i

puts fibonacci(num)