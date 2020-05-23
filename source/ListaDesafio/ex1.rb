require_relative './lib/verifica_num.rb'

def fatorial(num, cond)
  if cond then print "#{num} " end
  if num == 1
    if cond then print '= ' end
    return 1
  end
  if cond then print '* ' end
  return num * fatorial(num - 1, cond)
end

num = 0
print 'Insira um número: '

loop do 
  num = gets
  break if num.numero_positivo?
  print 'Entrada inválida, insira um número inteiro positivo: '
end

num = num.to_i

print "#{num}! = "
print fatorial(num, num <= 10)
