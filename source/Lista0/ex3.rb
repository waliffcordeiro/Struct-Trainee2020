=begin
Escreva um programa em Ruby com uma variável para cada um dos tipos citados nos slides 
(integer, float, string, array, symbol e hash) 
e utilize o método .class para imprimir na tela o conteúdo que comprove isso.
=end

# Atribuindo os valores
integer = 5
float = 2.7
string = "Struct"
array = ["Struct", 2020]
:symbol
hash = {"empresa" => "Struct"}

=begin
Checando se os valores atribuídos são realmente do tipo esperado.
Ao usar #{} em um print ou puts (dentro de aspas duplas) o que acontece 
é que: O que está dentro da chave é interpretado e é mostrado na tela o resultado.
No caso de variáveis, é mostrado o valor que está armazenado na variável.
=end
puts("#{integer} é #{integer.class}\n#{float} é #{float.class}\n#{:symbol} é #{:symbol.class}
#{array} é #{array.class}\n#{hash} é #{hash.class} ")