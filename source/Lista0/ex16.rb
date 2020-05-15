=begin
Um dos maiores dilemas da computação é a dicotomia entre memória e processamento: 
devo ocupar minha base de dados com dados já processados (relações de porcentagem, por exemplo), 
ou devo processá-los toda vez que eles forem necessários? Pensando nisso, 
imagine que você está programando uma aplicação que gerenciará uma base de dados de DNA. 
Sabemos que DNA são duplas hélices ligadas pela interação entre seus nucleotídeos. 
Temos quatro tipos de nucleotídeos no DNA: adenina (A), timina (T), citosina (C ) e guanina (G). 
Os nucleotídeos A só podem realizar ligações com nucleotídeos T, e os nucleotídeos C, com G. 
Dito isso, faça um programa que gere uma fita de DNA com 10 nucleotídeos aleatórios, 
para, depois de montada a primeira fita, gerar a segunda fita que completa esse DNA. 
Explicite na tela a primeira fita, gerada aleatoriamente, e depois a segunda fita, com as respectivas ligações.
=end

basesNitrogenadas = ['A','T','C','G']           # Definimos o array com as possíveis bases nitrogenadas
primeiraFita = []                               # Definimos o array da primeira fita
dna = []                                        # Definimos o array de resultado

for i in 1..10
    primeiraFita.push(basesNitrogenadas.sample) # O método .sample pega aleatoriamente um valor do array

    case primeiraFita[i-1]                      # [i-1] porque a posição do vetor começa no 0  
    # Após escolher aleatoriamente uma base nitrogenada, nós vamos pegar o seu par e guardar no array dna
    when 'A'
        dna.push(['A','T'])
    when 'T'
        dna.push(['T', 'A'])
    when 'G'
        dna.push(['G','C'])
    when 'C'
        dna.push(['C','G'])
    end
end

puts ("Primeira fita:\n#{primeiraFita}")

puts "DNA: "
# Faremos essa iteração para imprimir a fita do DNA gerado
for par in dna
    p par
end