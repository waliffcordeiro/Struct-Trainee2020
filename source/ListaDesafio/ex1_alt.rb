require_relative './lib/verifica_num.rb'

def fatorial(num, cond)
  print cond ? "#{num} " : nil
  if num == 1
    print cond ? '= ' : nil
    return 1
  end
  print cond ? '* ' : nil
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
