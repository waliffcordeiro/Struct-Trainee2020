=begin
Faça um programa que imprima todos os números pares de 1 até 100.
=end

# Utilizando o for
for i in 1..100
    if(i % 2 == 0)
        puts i
    end
end

=begin
# Utilizando o while
contador = 1
while contador <= 100
    if (contador % 2 == 0)
        puts contador
    end
    contador += 1
end
=end

=begin
Ambas soluções retornam o mesmo resultado. Gostaria que percebessem nesse exemplo que utilizo
if com aspas, if sem aspas. While com aspas, while sem aspas. O Ruby suporta esses diferentes formatos
=end