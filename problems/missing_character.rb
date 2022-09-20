# https://www.geeksforgeeks.org/missing-characters-make-string-pangram/

# Pangram is a sentence containing every letter in the English alphabet. Given a string, find all characters that are missing from the string, i.e., the characters that can make the string a Pangram. We need to print output in alphabetic order.
# Examples: 
# Input : welcome to geeksforgeeks
# Output : abdhijnpquvxyz

def missing_character(frase)
    p "A frase é"
    p frase

    if frase.include? "w"
        p "A frase tem w"
    end
end


frase = "welcome to geeksforgeeks"
puts missing_character(frase)