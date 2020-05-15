=begin
Utilizando a estrutura de repetição for, 
faça um programa em Ruby que receba 10 números e conte quantos deles estão no intervalo [10,20] 
e quantos deles estão fora do intervalo, escrevendo estas informações.
=end

intervalo = 0
foraIntervalo = 0

print("Digite 10 números separados por espaços: ")
numeros = gets.split

for numero in numeros
    # Lembrando que recebemos os dados por gets, temos então um array de strings, 
    # precisamos transformá-lo em integer para fazer a verificação
    case numero.to_i
    when 10..20
        intervalo += 1
    else 
        foraIntervalo += 1
    end
end

puts("#{intervalo} dos números enviados estão no intervalo e #{foraIntervalo} dos números estão fora do intervalo")

