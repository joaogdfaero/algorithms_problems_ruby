# Reversal algorithm for right rotation of an array

# Given an array, right rotate it by k elements. asd ""

# Input: arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
# k = 3
# Output: 8 9 10 1 2 3 4 5 6 7


def reversal(list,k)
    p "A list inicialmente é"
    p list

    p "A list será girada em #{k} casas"

    # "troca os 3 primeiros com os 3 do meio"  
    tamanho = list.length
    (0..tamanho-1).each do |i|
        if i < tamanho -k -1 # Only for the first length - k numbers            
            #Parei aqui
           list[i], list[i+k] = list[i+k], list[i]
           p "front"
           p list
        else
           list[i], list [i-(tamanho-k-1)] = list [i-(tamanho-k-1)], list[i]
           p "back"
           p list
        end
    end
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
reversal(list,k)

#Parei aqui