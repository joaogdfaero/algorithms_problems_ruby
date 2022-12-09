# https://www.geeksforgeeks.org/missing-characters-make-string-pangram/

def missing_character(frase)

    alphabet = ('a'..'z').to_a # alphabet
    tamanho = alphabet.length # alphabet length

        (0..tamanho-1).to_a.each do |i|
            if frase.include? alphabet[i]
                alphabet[i]=0 # exclude that letter
            else
            end
        end

        tamanho = alphabet.length # new alphabet length
        output = []
        (0..tamanho-1).to_a.each do |i|
            output.append(alphabet[i]) unless alphabet[i]==0
            p output
        end
        p "Final result is:"
        p output
        return output
end


frase = "welcome to geeksforgeeks"
puts missing_character(frase)
