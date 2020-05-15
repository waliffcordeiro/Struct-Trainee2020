=begin
Tendo como entrada o hash aluno1 = {"nome" => "Pedro", "idade" => 20}, imprima na tela apenas o nome do aluno1.
=end

aluno1 = {"nome" => "Pedro", "idade" => 20}

=begin
Um hash vazio pode ser criado da seguinte forma:
hash = Hash.new ou hash = {}

Para criar um hash com informações você pode fazer: hash = {"chave1" => valor1, "chave2" => valor2, ...}
Para acessar os valores: hash["chave"]
=end

puts aluno1['nome']