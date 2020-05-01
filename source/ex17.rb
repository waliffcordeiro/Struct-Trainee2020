=begin
Você foi contratado para programar um caixa eletrônico. 
Receba um valor inteiro inserido pelo usuário e responda quantas notas de 
100, 50, 20, 10, 5 e 2 são necessárias para que o valor seja sacado. Indique se houver resto.
=end

print("Digite quanto você tem (R$): ")
dinheiro = gets.to_i

notaVerificada = [100,50,20,10,5,2]              # Array de notas possíveis

for nota in notaVerificada                       # Iterando cada uma das notas possíveis de se 'sacar'
    qtdNotas = dinheiro / nota
    if dinheiro >= nota                          # Se tiver dinheiro suficiente para 'sacar' a nota que eu quero, então:
        puts ("#{qtdNotas} nota(s) de #{nota}")
        dinheiro = dinheiro - (qtdNotas * nota)  # Tiro o valor que 'saquei' em notas do total do meu dinheiro
    else
        puts ("#{qtdNotas} nota(s) de #{nota}")  # Se meu dinheiro não der para tirar a nota, eu falo que tirei 0 notas
    end
end

puts ("Sobrou #{dinheiro} real")
