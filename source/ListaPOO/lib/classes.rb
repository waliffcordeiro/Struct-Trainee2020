class Pessoa
  def initialize(nome, cpf, telefone, idade)
    @nome = nome
    @cpf = cpf
    @telefone = telefone
    @idade = idade
  end
  
  attr_accessor :telefone

  def dadosPessoais
    {nome: @nome, cpf: @cpf, telefone: @telefone, idade: @idade}
  end
end

class ContaCorrente < Pessoa

  @@contas = []

  def initialize(nome, cpf, telefone, idade, saldo, senha)
    # Utilizando o super, inicializamos esses campos de acordo com
    # a inicialização da classe mãe (Pessoa)
    super(nome, cpf, telefone, idade)
    @saldo = saldo
    @num_conta = rand(1000..9999)
    @senha = senha
    @@contas << self
  end

  attr_reader :saldo

  def depositar(valor)
    @saldo += valor
  end

  def sacar(valor)
    @saldo -= valor
  end

  def dadosConta
    {num_conta: @num_conta, senha: @senha}
  end

  def tipo
    "Conta corrente"
  end

  def self.contas
    @@contas
  end
end

class ContaPoupanca < Pessoa

  @@contas = []

  def initialize(nome, cpf, telefone, idade, saldo, senha)
    # Utilizando o super, inicializamos esses campos de acordo com
    # a inicialização da classe mãe (Pessoa)
    super(nome, cpf, telefone, idade)
    @saldo = saldo
    @num_conta = rand(1000..9999)
    @senha = senha
    @@contas << self
  end

  attr_reader :saldo

  def depositar(valor)
    @saldo += valor
  end

  def sacar(valor)
    if valor > @saldo
      valor = @saldo
    end
    @saldo -= valor
  end

  def dadosConta
    {num_conta: @num_conta, senha: @senha}
  end

  def tipo
    "Conta poupança"
  end

  def self.contas
    @@contas
  end
end