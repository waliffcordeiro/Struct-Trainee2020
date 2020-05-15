=begin
Escreva um programa em Ruby que, dada a nota de um aluno, imprima a menção dele de acordo com as regras da UnB. 
(http://www.dan.unb.br/images/pdf/graduacao/documentos_uteis/porcentagemdefrequncia.pdf)
=end

print("Digite a nota do aluno: ")
nota = gets.to_f

# Utilizando if e else
if nota < 0
    puts "Nota inválida"
elsif nota >=0 and nota < 1
    puts "SR"
elsif nota >= 1 and nota <= 2.9
    puts "II"
elsif nota >= 3 and nota <= 4.9
    puts "MI"
elsif nota >= 5 and nota <= 6.9
    puts "MM"
elsif nota >= 7 and nota <= 8.9
    puts "MS"
elsif nota >= 9 and nota <= 10
    puts "SS"
else
    puts "Nota inválida"
end

=begin
# Utilizando case
case nota
when 0..0.9
    puts "SR"
when 1..2.9
    puts "II"
when 3..4.9
    puts "MI"
when 5..6.9
    puts "MM"
when 7..8.9
    puts "MS"
when 9..10
    puts "SS"
else
    puts "Nota inválida"
end
=end

# As duas formas desenvolvidas acima retornam exatamente o mesmo resultado