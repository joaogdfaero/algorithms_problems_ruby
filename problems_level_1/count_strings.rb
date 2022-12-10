# Given a string, write a program to count the occurrence of Lowercase characters, Uppercase characters, Special characters, and Numeric values. 

# Examples: 

# Input : #GeeKs01fOr@gEEks07
# Output : 
# Upper case letters : 5
# Lower case letters : 8
# Numbers : 4
# Special Characters : 2

def count(input)
    tamanho = input.length # calculates length of input

    alphabet_u = ('A'..'Z').to_a # alphabet upper case
    tamanho_u = alphabet_u.length
    count_u = 0

    alphabet_l = ('a'..'z').to_a # alphabet lower case
    tamanho_l = alphabet_l.length
    count_l = 0
    
    numbers = (0..9).to_a
    tamanho_n = numbers.length
    numbers = (0..9).to_a.join(", ") # transforms number in array separated by comma
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
