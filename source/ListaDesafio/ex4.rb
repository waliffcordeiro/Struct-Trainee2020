class Array
  def checa_elementos
    tamanho_original = self.count
    
    for i in 0..(self.count - 1)
      num = self.delete_at(i)
      break if num >= self.reduce(:+)
      self.insert(i, num)
    end

    if self.count == tamanho_original
      return true
    else
      return false
    end
  end
end

numeros = gets.split(',').map{ |num| num.to_i }

puts numeros.checa_elementos