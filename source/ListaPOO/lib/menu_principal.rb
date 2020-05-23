require_relative './classes.rb'
require_relative './menu_conta.rb'

class Array
  def listar
    self
        .map.with_index(1){ |conta, indice| "\t#{indice}. #{conta.dadosPessoais[:nome]} ~> #{conta.tipo}" }
  end
end

def printaMenuPrincipal
  puts "1. Listar contas corrente"
  puts "2. Criar conta corrente"
  puts "3. Listar contas poupança"
  puts "4. Criar conta poupança"
  puts "5. Acessar conta"
  puts "0. Sair"
end

def recebeOpcPrincipal
  opt = esperaNumero(0).to_i

  case opt
    when 0
      return true
    when 1
      if ContaCorrente.contas.count >= 1
        puts "\nLista de contas corrente:"
        puts ContaCorrente.contas.listar
      else 
        puts "\nAinda não existem contas corrente."
      end
    when 2
      system "clear"
      loop do 
        puts "Criando nova conta corrente"
        print "Digite o nome do dono da conta: "
        nome = gets.chomp
        print "Digite o cpf do dono da conta(11 números sem pontos e hífens): "
        cpf = esperaNumero(11).para_cpf
        print "Digite o telefone do dono da conta(9 números sem pontos e espaços): "
        telefone = esperaNumero(9).para_telefone
        print "Digite a idade do dono da conta: "
        idade = esperaNumero(0).to_i
        print "Digite o saldo inicial da conta: "
        saldo = esperaNumero(0).to_f
        print "Digite a senha da conta: "
        senha = gets.chomp
        puts "Confirma criação de conta com os seguintes dados?\n\tNome: #{nome}\n\tCPF: #{cpf}\n\tTelefone: #{telefone}\n\tIdade: #{idade}\n\tSaldo: #{saldo}\n\tSenha: #{senha}\n1. Sim\nOutro número. Não"
        if esperaNumero(0).to_i == 1
          ContaCorrente.new(nome, cpf, telefone, idade, saldo, senha)
          puts "Deseja criar mais uma conta?\n1. Sim\nOutro número. Não"
          break if esperaNumero(0).to_i != 1
        end
        system "clear"
        puts "Digite os dados novamente!"
      end
    when 3
      if ContaPoupanca.contas.count >= 1
        puts "\nLista de contas poupança:"
        puts ContaPoupanca.contas.listar
      else 
        puts "\nAinda não existem contas poupança."
      end
    when 4
      system "clear"
      loop do 
        puts "Criando nova conta poupança"
        print "Digite o nome do dono da conta: "
        nome = gets.chomp
        print "Digite o cpf do dono da conta(11 números sem pontos e hífens): "
        cpf = esperaNumero(11).para_cpf
        print "Digite o telefone do dono da conta(9 números sem pontos e espaços): "
        telefone = esperaNumero(9).para_telefone
        print "Digite a idade do dono da conta: "
        idade = esperaNumero(0).to_i
        print "Digite o saldo inicial da conta: "
        saldo = esperaNumero(0).to_f
        print "Digite a senha da conta: "
        senha = gets.chomp
        puts "Confirma criação de conta com os seguintes dados?\n\tNome: #{nome}\n\tCPF: #{cpf}\n\tTelefone: #{telefone}\n\tIdade: #{idade}\n\tSaldo: #{saldo}\n\tSenha: #{senha}\n1. Sim\nOutro número. Não"
        if esperaNumero(0).to_i == 1
          ContaPoupanca.new(nome, cpf, telefone, idade, saldo, senha)
          puts "Deseja criar mais uma conta?\n1. Sim\nOutro número. Não"
          break if esperaNumero(0).to_i != 1
        end
        system "clear"
        puts "Digite os dados novamente!"
      end
    when 5
      contas = ContaCorrente.contas + ContaPoupanca.contas
      if contas.count >= 1
        puts "\nQual conta deseja acessar?"
        puts contas.listar
        opt_conta = -1
        loop do
          opt_conta = esperaNumero(0).to_i
          break if opt_conta >= 1 && opt_conta <= contas.count
          puts "Opção inválida, digite novamente."
        end
        menu_conta(contas[opt_conta - 1])
      else
        puts "\nNão existem contas ainda."
      end
    else
      puts "Entrada inválida, digite novamente."
  end
end

def menu_principal
  system "clear"
  loop do 
    puts "Menu princial"
    printaMenuPrincipal()
    break if recebeOpcPrincipal()
    puts "\nAperte enter para continuar..."
    gets
    system "clear"
  end
end