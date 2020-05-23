class String
  def numero_positivo?
    (Integer(self) != nil rescue false) && self.to_i > 0
  end
end