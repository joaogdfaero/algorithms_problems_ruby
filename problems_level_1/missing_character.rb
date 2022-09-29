# https://www.geeksforgeeks.org/missing-characters-make-string-pangram/

# Pangram is a sentence containing every letter in the English alphabet. Given a string, find all characters that are missing from the string, i.e., the characters that can make the string a Pangram. We need to print output in alphabetic order.
# Examples: 
# Input : welcome to geeksforgeeks
# Output : abdhijnpquvxyz

def missing_character(frase)
    p "A frase é"
    p frase

    alphabet = ('a'..'z').to_a # alphabeto
    tamanho = alphabet.length # tamanho do alphabeto

    #alphabet1 = ('a'..'z').to_a # alphabeto

        (0..tamanho-1).to_a.each do |i|
            p "o índice é"
            p i
            #if alphabet[i] in frase # ESSE in NO RUBY DÁ SEMPRE TRUE
            #if alphabet[i].include? frase # VAI SER SEMPRE FALSE PORQUE ESTOU VENDO SE A LETRA CONTÉM A FRASE
            if frase.include? alphabet[i]
                p "A letra #{alphabet[i]} está na frase"
                alphabet[i]=0 # anula a letra
                p "O alfabeto é"
                p alphabet
            else
                p "A letra #{alphabet[i]} NÃO está na frase"
                p "O alfabeto é"
                p alphabet
            end
        end

        tamanho = alphabet.length # novo tamanho do alphabeto
        output = []

        (0..tamanho-1).to_a.each do |i|
            output.append(alphabet[i]) unless alphabet[i]==0
            p output
        end
        p "o resultado final é"
        return output
end

# alphabeto(x) contains in frase?
# alphabeto(x).delete


frase = "welcome to geeksforgeeks"
puts missing_character(frase)