=begin
Utilizando a função criada no exercício anterior, 
escreva um programa que receba 5 valores de entrada e imprima quantos deles são pares e quantos são ímpares.
=end

def isPar?(num)
    return (num % 2 == 0)
end

par = 0
impar = 0

for i in 1..5
    
    print("Digite um número: ")
    # Estou recebendo o valor digitando diretamente como parâmetro da função, ao invés de usar uma variável auxiliar
    if isPar?(gets.to_i)
        par += 1
    else
        impar += 1
    end
end

puts("Foram inseridos #{par} números pares e #{impar} números ímpares.")


