print("Digite quantas velas você tem: ")

velas = gets.to_i

while velas < 0
    print("Quantidade inválida, digite novamente: ")
    velas = gets.to_i
end

# Inicializando um contador com a quantidade de velas, salvando o valor inicial para printar
velasIniciais = contador = velas

loop do 
    velas = velas/2
    # O valor inicial do contador é a quantidade de velas e a cada iteração é somado quantas velas novas foram formadas
    contador += velas
    break if velas == 1 # Se sobrou apenas 1 vela, não é possível formar uma nova vela
end

puts("Você inicialmente tinha #{velasIniciais} que resultou em #{contador} horas de iluminação.")