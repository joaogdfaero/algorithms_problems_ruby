# https://www.geeksforgeeks.org/missing-characters-make-string-pangram/

def missing_character(frase)

    alphabet = ('a'..'z').to_a # alphabet
    tamanho = alphabet.length # alphabet length

        (0..tamanho-1).to_a.each do |i|
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
        p "Final result is:"
        return output
end


frase = "welcome to geeksforgeeks"
puts missing_character(frase)
