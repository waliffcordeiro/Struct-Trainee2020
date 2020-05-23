class Array
  def formam_triangulo?
    
    for i in 0..(self.count - 1)
      num = self.pop
      
      # se algum número não se encaixar na condição para
      # formar triângulo, o vetor fica com um elemento
      # a menos e o loop para
      break if num >= self.reduce(:+)
      self.unshift(num)
    end

    # se não tiver todos os elementos do tamanho original
    # ou mais do que 3 elementos, não forma triângulo
    if self.count != 3
      return 'Não formam triângulo'
    # o método uniq deixa só os valores diferentes de um vetor,
    # logo, se self.uniq.count == 3, os três valores são 
    # diferentes uns dos outros
    elsif self.uniq.count == 3
      return 'Forma triângulo escaleno'
    elsif self.uniq.count == 2
      return 'Forma triângulo isósceles'
    else
      return 'Forma triâmgulo equilátero'
    end
  end
end

numeros = gets.split(',').map{ |num| num.to_i }

# se qualquer um dos elementos do vetor for <= 0
# o usuário inseriu uma entrada inválida
if numeros.any?{ |num| num <= 0 }
  return puts 'Entrada inválida'
end

puts numeros.formam_triangulo?