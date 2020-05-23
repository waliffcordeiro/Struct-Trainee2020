class String
  # Checa se a string contém um número. O que essa função faz
  # é jogar nossa string dentro da classe float. Se não for um
  # número (tanto inteiro quanto decimal), essa operação Float(self)
  # causará um erro no ruby, que nós prevenimos usando o rescue.
  # Logo, se self for um número, Float(self) != nil retornará true,
  # se não for, resgatamos o erro (rescue) e retornamos false
  def numero?
    Float(self) != nil rescue false
  end
  
  # Insere caracteres para formatar uma string de números em
  # uma string de telefone
  def para_telefone
    self.chars.insert(1,' ').insert(6,'-').join
  end

  # Insere caracteres para uma string de números ser formatada
  # como uma string de cpf
  def para_cpf
    self.chars.insert(3,'.').insert(7,'.').insert(11,'-').join
  end
end

# Espera receber um número e pede uma nova entrada até que
# esta seja um número e tenha dígitos o suficiente. No final
# retornamos o número ainda como string.
def esperaNumero(casas)
  valor = ''
  loop do
    valor = gets.chomp
    if casas > 0 
      break if valor.numero? && valor.length == casas
      print "Entrada inválida. Insira um número com #{casas} casas: "
    else
      break if valor.numero?
      print "Entrada inválida. Insira um número: "
    end
  end
  return valor
end
