=begin
Desenvolva um programa que receba do usuário um número entre 1 e 10 e escreva a tabuada do valor lido. 
O programa deve pedir para o usuário inserir um novo número se a entrada não estiver no
intervalo entre 1 e 10 quantas vezes for preciso.
=end

num = 0

=begin
begin
    print "Digite um número inteiro entre 1 e 10: "
    num = gets.to_i
end while(num <= 0 || num > 10)
=end 

# Garantindo que o número recebido seja entre 1 e 10
loop do
    print "Digite um número inteiro entre 1 e 10: "
    num = gets.to_i
    break if(num >= 0 && num <= 10)
end

# Printando a tabuada
for i in 1..10
    puts ("#{i} * #{num} = #{i * num}")
end

=begin
Perceba que o for é um contador de 1 ao 10 e o número recebido é diretamente o multiplicador que queremos obter
O produto do contador pelo valor recebido nos retorna diretamente a tabuada que queremos.

Foram feitas duas formas de "do while" no Ruby, ambas formas acima simulam o do while e proporcionam o mesmo resultado
=end