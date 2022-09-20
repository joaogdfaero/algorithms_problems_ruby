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

    p "All lower case letters are"
    alphabet_l = ('a'..'z').to_a # alphabeto
    p alphabet_l

    p "All numbers are"
    numbers = (0..9).to_a
    p numbers

    p "All special characters are"







end

input = "#GeeKs01fOr@gEEks07"
p count(input)