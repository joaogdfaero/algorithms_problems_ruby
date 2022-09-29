# Given a string, write a program to count the occurrence of Lowercase characters, Uppercase characters, Special characters, and Numeric values. 

# Examples: 

# Input : #GeeKs01fOr@gEEks07
# Output : 
# Upper case letters : 5
# Lower case letters : 8
# Numbers : 4
# Special Characters : 2

def count(input)
    p "A frase é"
    p input
    tamanho = input.length

    p "All upper case letters are"
    alphabet_u = ('A'..'Z').to_a # alphabeto
    p alphabet_u
    tamanho_u = alphabet_u.length
    count_u = 0

    p "All lower case letters are"
    alphabet_l = ('a'..'z').to_a # alphabeto
    p alphabet_l
    tamanho_l = alphabet_l.length
    count_l = 0

    p "All numbers are"
    numbers = (0..9).to_a
    tamanho_n = numbers.length
    numbers = (0..9).to_a.join(", ") # Transforma em array e separa eles por vírgula para poder fazer a comparação
    p numbers
    count_n = 0


    (0..tamanho-1).to_a.each do |i|
        if alphabet_u.include? input[i]
            count_u = count_u + 1
        end
    end

    p "Upper Case Letters:"
    p count_u

    (0..tamanho-1).to_a.each do |i|
        #if input.include? alphabet_l[i]
        if alphabet_l.include? input[i]
            count_l = count_l + 1
        end
    end
    p "Lower Case Letters:"
    p count_l

    (0..tamanho-1).to_a.each do |i|
        #if input.include? numbers[i]
        if numbers.include? input[i]
            count_n= count_n + 1
        end
    end

    p "Numbers:"
    p count_n
end

input = "#GeeKs01fOr@gEEks07"
count(input)