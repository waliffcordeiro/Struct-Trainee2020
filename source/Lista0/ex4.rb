=begin
Deve-se criar as variáveis nome, idade, peso e altura. 
Armazene dentro dessas variáveis os valores referentes às suas informações pessoais respeitando o tipo que faz sentido 
(string, integer ou float). Tendo as variáveis e seus respectivos conteúdos, concatenar tudo formando a seguinte frase:
“Meu nome é nome, tenho idade anos, peso peso kg e minha altura é altura m”
=end

print("Digite o nome: ")
nome = gets.strip                   # O método strip remove os espaços e quebra de linhas
print("Digite a idade: ")
idade = gets.to_i                   # Recebemos um valor inteiro para idade, através do método to_i
print("Digite o peso (em kg): ")
peso = gets.to_f                    # Recebemos um valor decimal para o peso através do método to_f
print("Digite a altura (em m): ")
altura = gets.to_f                  # Recebemos um valor decimal para a altura através do método to_f

puts("Meu nome é #{nome}, tenho #{idade} anos, peso #{peso}kg e minha altura é #{altura}m")