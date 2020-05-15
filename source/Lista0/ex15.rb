=begin
Crie um hash vazio para armazenar as informações de um aluno. 
Após criar o hash vazio, peça para o usuário digitar o nome, idade, matrícula e e-mail. 
Guarde essas informações no hash aluno com as chaves citadas em negrito e imprima o resultado gerado.
=end

aluno = Hash.new            # Poderia ser também aluno = {}

puts("Iremos pegar algumas informações sobre o aluno")

print("Digite o nome: ")
aluno["nome"] = gets.strip  # O método .strip é utilizado para retirar espaços e quebras de linha

print("Digite a idade: ")
aluno["idade"] = gets.to_i

print("Digite a matrícula: ")
aluno["matricula"] = gets.strip

print("Digite o e-mail: ")
aluno["email"] = gets.strip

p aluno