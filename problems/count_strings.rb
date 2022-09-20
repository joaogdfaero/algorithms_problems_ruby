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

    p "All upper case letters are"
    alphabet_u = ('A'..'Z').to_a # alphabeto
    p alphabet_u
    p "O tamanho_u é"
    tamanho_u = alphabet_u.length
    p tamanho_u
    count_u = 0

    p "All lower case letters are"
    alphabet_l = ('a'..'z').to_a # alphabeto
    p alphabet_l
    tamanho_l = alphabet_l.length

    p "All numbers are"
    numbers = (0..9).to_a
    p numbers
    tamanho_n = numbers.length

    #p "All special characters are"

    (0..tamanho_u-1).to_a.each do |i|
        if input.include? alphabet_u[i]
            count_u = count_u + 1
        end
    end
    p "Upper Case Letters:"
    return count_u
        
end

input = "#GeeKs01fOr@gEEks07"
p count(input)