=begin
Desenvolva um programa que receba do usuário um número entre 1 e 10 e escreva a tabuada do valor lido.
=end

print "Digite um número inteiro entre 1 e 10: "
num = gets.to_i

for i in 1..10
    puts ("#{i} * #{num} = #{i * num}")
end

=begin
Perceba que o for é um contador de 1 ao 10 e o número recebido é diretamente o multiplicador que queremos obter
O produto do contador pelo valor recebido nos retorna diretamente a tabuada que queremos.
=end