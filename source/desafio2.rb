=begin
No mesmo restaurante maluco do exercício anterior, um garçom
que trabalha com dev sugeriu que os pratos deveriam ter o preço
no cardápio. Ele disse: “isso não é uma EJ, não da pra trabalhar
sem ganhar dinheiro”. Para isso, foi sugerido que o valor de cada
chave do hash maior (entrada, principal, sobremesa), fosse
transformado em um hash organizado da seguinte forma:
{“Bruschetta” => 2.5, “Salada” => 3, “Sopa” => 5}
Logo, o cardápio ficaria da seguinte maneira:
{"entrada"=>{"Bruschetta" => 2.5, "Salada" => 3, "Sopa" => 5},
"principal"=> ...}
Com essa mudança, o restaurante poderia finalmente cobrar seus
clientes! Faça então um programa que não só gere e imprima na
tela um array com um prato aleatório de cada categoria, mas
também que calcula a conta que deverá ser paga.
=end

menu = {
    :entradas => {"Rolinho Primavera" => 12.5, "Caviar" => 70, "Ostras" => 15},
    :principal => {"Picanha" => 25, "Macarrão" => 20, "Pizza" => 30},
    :sobremesa => {"Pudim" => 5, "Sorvete" => 10, "Chocolate" => 3}
}
listadePratos = []
valorTotal = 0

 # as chaves são (:entradas, :principal e :sobremesa) e o valor é o hash vinculado à essas chaves
menu.each do |chave, valor| 
    # Número aleatório de 0 até o (número de itens do hash - 1). Nesse caso será um número entre 0 e 2
    numAleatorio = rand(0..(valor.count - 1))
    contador = 0
    valor.each do |nomedoprato, preco|    # Iterando o segundo hash que tem o nome do prato e o preço
        if contador == numAleatorio  # Iterando para pegar o prato e o valor de acordo com um número aleatório gerado
            listadePratos.push(nomedoprato)  
            valorTotal += preco # Somando o valor total com base no preço de cada prato
        end
        contador += 1   # Utilizando o contador para ver se estamos pegando um prato aleatório
    end
end

print "O pedido realizado foi #{listadePratos}. O valor total do pedido foi R$#{valorTotal}\n"