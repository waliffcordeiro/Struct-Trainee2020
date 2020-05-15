# Escreva um programa em Ruby que leia uma string do usuário e cheque se ela contém apenas caracteres ASCII.

print ("Digite a sua frase: ")
frase = gets            # Recebendo a string do usuário 

if frase.ascii_only?    # Verificando, através do método .ascii_only? se é uma frase ASCII ou não
    puts ("Contém somente caracteres ASCII")
else 
    puts ("Contém caracteres não ASCII")
end