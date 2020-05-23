# Escreva uma classe para uma conta bancária com os seguintes
# atributos:
  # Nome
  # CPF
  # Telefone
  # Idade
  # Saldo
  # Número da conta
  # Senha
# E com os seguintes métodos:
  # Depositar dinheiro
  # Sacar dinheiro
  # Mostrar saldo
  # Modificar telefone
  # Mostrar dados pessoais (Nome, CPF, Telefone, Idade)
  # Mostrar dados da conta (Número da conta e senha)
# Com a classe feita, escreva um pequeno código que inicialize uma
# instância de conta bancária e utilize todos os métodos listados (printando
# feedback)

class Conta
  def initialize(nome, cpf, telefone, idade, saldo, senha)
    @nome = nome
    @cpf = cpf
    @telefone = telefone
    @idade = idade
    @saldo = saldo
    @num_conta = rand(1000..9999)
    @senha = senha
  end

  attr_reader :saldo
  attr_writer :telefone

  def depositar(valor)
    @saldo += valor
  end

  def sacar(valor)
    @saldo -= valor
  end

  def dadosPessoais
    return {nome: @nome, cpf: @cpf, telefone: @telefone, idade: @idade}
  end

  def dadosConta
    return {num_conta: @num_conta, senha: @senha}
  end
end

minha_conta = Conta.new('Estevan', '123.456.789-10', '9 8765-4321', 21, 100, '12345')

# vou depositar um valor aleatório
valor = rand(30..80)
puts "Meu saldo era #{minha_conta.saldo}, mas depositei #{valor} e agora é #{minha_conta.depositar(valor)}"

# vou sacar um valor aleatório
valor = rand(80..120)
puts "Meu saldo era #{minha_conta.saldo}, mas saquei #{valor} e agora é #{minha_conta.sacar(valor)}"

# vou gerar um telefone aleatório
puts "Meu telefone era: #{minha_conta.dadosPessoais[:telefone]}"
minha_conta.telefone = (900000000 + rand(70000000..99999999)).to_s.chars.insert(1, ' ').insert(6, '-').join
puts "Agora meu telefone é: #{minha_conta.dadosPessoais[:telefone]}"

# vou organizar meus dados para melhorar a legibilidade
puts "Meus dados pessoais são:\n\t#{minha_conta.dadosPessoais.map{ |chave, valor| "#{chave.capitalize}: #{valor}" }.join("\n\t")}"
puts "Meus dados bancários são:\n\t#{minha_conta.dadosConta.map{ |chave, valor| "#{chave.capitalize}: #{valor}" }.join("\n\t")}"