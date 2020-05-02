=begin
Um restaurante tem seu cardápio organizado em um hash. O hash
consiste em três chaves, “entrada”, “principal” e “sobremesa”.
Você deverá colocar de 3 a 5 pratos vinculados a cada uma
dessas chaves (array de pratos). Escreva um programa que
retorne um array com um prato selecionado aleatoriamente de
cada chave e os imprima na tela.
{"entrada"=>["Bruschetta", "Salada","Sopa"], "principal"=> ...}
Coloquei acima o começo de como ficará uma possível versão do
seu hash. Visto que temos um hash com as chaves entrada,
principal e sobremesa. O resultado esperado no array gerado
será um prato de cada uma dessas chaves, selecionado
aleatoriamente. Exemplo de resultado:
["Bruschetta", "Bobó de Camarão", "Torta de Limão"]
=end

# Definindo o Hash do cardápio
menu = {
    :entradas => ["Rolinho Primavera", "Caviar", "Ostras"],
    :principal => ["Picanha", "Macarrão", "Pizza"],
    :sobremesa => ["Pudim", "Sorvete", "Chocolate"]
}

resultado = []  # Criando o array que guardará o resultado

# Acessamos a chave que queremos pegar um prato e pegamos do array de forma aleatória(sample)
resultado.push(menu[:entradas].sample, menu[:principal].sample, menu[:sobremesa].sample)

p resultado