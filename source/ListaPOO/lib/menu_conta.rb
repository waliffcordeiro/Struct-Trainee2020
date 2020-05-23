# Criei um arquivo para validar todos os dados que eu recebo.
# Verifico se a entrada do usuário contém realmente um número
# e checo também se esse número tem casas suficientes para o dado
# ex: telefone precisa de 9 dígitos, cpf precisa de 11
# Além de validar, criei métodos para gerar as strings de acordo 
# com o dado. Então, para cpf, 12345678910 vira 123.456.789-10
require_relative './formatos.rb'

def printaMenuConta
  puts "1. Depositar"
  puts "2. Sacar"
  puts "3. Exibir saldo"
  puts "4. Modificar telefone"
  puts "5. Exibir dados pessoais"
  puts "6. Exibir dados da conta"
  puts "0. Sair"
end

def recebeOpcConta(conta)
  opt = esperaNumero(0).to_i
  case opt
    when 0
      puts "\nSaindo da #{conta.tipo} de #{conta.dadosPessoais[:nome]}..."
      return true
    when 1 
      print "\nDigite o valor a ser depositado: R$"
      puts "Seu novo saldo é: R$#{conta.depositar(esperaNumero(0).to_f)}"
    when 2 
      print "\nDigite o valor a ser sacado: R$"
      saldo_anterior = conta.saldo
      puts "Você sacou R$#{saldo_anterior - conta.sacar(esperaNumero(0).to_f)} e seu novo saldo é R$#{conta.saldo}"
    when 3
      puts "\nSeu saldo é: R$#{conta.saldo}"
    when 4 
      print "\nDigite o novo telefone(11 números sem pontos e hífens): "
      conta.telefone = esperaNumero(9).para_telefone
      puts "Seu novo número de telefone é: #{conta.telefone}"
    when 5 
      puts "\nDados pessoais:"
      puts "#{conta.dadosPessoais.map{ |chave, valor| "\t#{chave.capitalize}: #{valor}" }.join("\n")}"
    when 6
      puts "\nDados da conta:"
      puts "#{conta.dadosConta.map{ |chave, valor| "\t#{chave.capitalize}: #{valor}" }.join("\n")}"
    else
      puts "Entrada inválida, digite novamente."
  end
end

# O loop do menu acaba se o método recebeOpcConta() retorna true, o que
# só ocorre quando o usuário escolhe sair do programa
def menu_conta(conta)
  # Roda o comando 'clear' no terminal, limpando a tela 
  system "clear"
  loop do 
    puts "Acessando #{conta.tipo} de #{conta.dadosPessoais[:nome]}"
    printaMenuConta()
    
    break if recebeOpcConta(conta)
    puts "\nAperte enter para continuar..."

    # O gets serve só para aguardar uma entrada qualquer do usuário
    gets
    system "clear"
  end
end