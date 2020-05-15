=begin
Escreva um código em Ruby que gere um array com todos os anos do século 20 e coloque em outro array apenas os que forem
anos bissextos (recomendamos fazer uma função que verifica se é bissexto). Por fim, imprima esse array.
=end

# Você também poderia fazer secXX = 1901..2000 mas não conseguiriam imprimir diretamente todos os anos, precisaria iterar
secXX = []                  
bissextos = []

=begin
O ano é bissexto quando é divisível por 400 ou quando é divisível por 4 mas não é divisível por 100.
Se colocarmos um return verificando essa condição, ele irá retornar verdadeiro caso seja satisfeito, ou seja,
retornará verdadeiro se for bissexto e falso se não for!
=end
def isBissexto?(ano)
    return ((ano % 400 == 0) || ((ano % 4 == 0) && (ano % 100 != 0)))
end

for i in 1901..2000
    secXX.push(i)           # Criando um array com todos os anos do século XX
    if isBissexto?(i)
        bissextos.push(i)   # Criando um array apenas com os anos bissextos do século 20
    end
end

p ("Os anos do século XX são: #{secXX}")
print("\n")
p ("Os anos bissextos do século XX são: #{bissextos}")