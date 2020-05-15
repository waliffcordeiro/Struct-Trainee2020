=begin
Escreva um programa em Ruby que receba um valor inteiro do usuário, 
some a constante 5 ao valor recebido e mostre na tela.
=end

print ("Digite um número: ")
num = gets.to_i        # Recebe uma string, transformando-a em inteiro através do método to_f

resultado = num + 5    # Soma a constante 5 ao valor informado pelo usuário

puts ("Recebi: #{num}")
puts ("Resultado: #{resultado}")

=begin
Outra forma de fazer seria (num += 5) que já soma diretamente a constante cinco ao valor inicial,
mas dessa forma perderíamos o valor recebido, o que não é o intuito do exercício
=end