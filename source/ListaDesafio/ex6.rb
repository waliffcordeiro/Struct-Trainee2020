print 'Insira um valor para o investimento: '
investimento = gets.to_f
print 'Insira o valor do rendimento: '
rendimento = gets.to_f
print 'Insira o valro da conta de luz: '
conta = gets.to_f
print 'Insira o prazo que o Waliff tem pra pagar: '
prazo = gets.to_i

juros = 0.01
lucro = 0

if investimento <= 0 || rendimento <= 0 || conta <= 0 || prazo <= 0
  return puts 'Entrada inválida'
end

for tempo in 1..prazo
  conta += conta * juros
  rend_mensal = investimento  * rendimento
  lucro += rend_mensal
  break if lucro >= conta
  investimento += rend_mensal
end

if lucro >= conta
  puts "Waliff pagou a conta em #{tempo} meses"
else
  puts "Waliff não conseguiu pagar a conta em #{prazo} meses"
end
