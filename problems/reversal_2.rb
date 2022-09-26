# Reversal algorithm for right rotation of an array

# Given an array, right rotate it by k elements. asd ""

# Input: arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
# k = 3
# Output: 8 9 10 1 2 3 4 5 6 7

# O MÉTODO DE FAZER UM NÚMERO NA FRENTE VIR


def reversal(list,k)
    p "A list inicialmente é"
    p list

    p "A list será girada em #{k} casas"

    tamanho = list.length
    (0..tamanho-1).each do |i|
        list[i]=list[i+k]
        p list
    end
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
reversal(list,k)

#Parei aqui