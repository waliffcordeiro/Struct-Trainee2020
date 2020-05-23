# Utilizando a classe anterior, desenvolva um menu com as seguintes
# opções (utilize somente uma instância da classe de conta bancária, criada
# dentro do próprio código):
#   1. Depositar
#   2. Sacar
#   3. Exibir saldo
#   4. Modificar telefone
#   5. Exibir dados pessoais
#   6. Exibir dados da conta
#   7. Sair
# Observe que o programa só deverá terminar quando o usuário decidir
# sair. Para facilitar, utilize os números como a escolha do usuário (digitar 1
# para depositar, 2 para sacar, etc...).

require_relative './lib/menu_conta.rb'

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
  attr_accessor :telefone

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

  def tipo
    "Conta"
  end
end

minha_conta = Conta.new('Estevan', '123.456.789-10', '98765-4321', 21, 100, '12345')

# Criei um método no arquivo menu_conta para lidar com todas as opções do
# menu da conta que criei aqui, passando ela como parâmetro
menu_conta(minha_conta)