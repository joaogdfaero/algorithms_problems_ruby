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

    length = list.length
    p "O tamanho da list é #{length}"
    
    # Create a zeros array with length k
    arr = Array.new(k, 0)


    # Prepend that array to our list
    (0..k-1).each do
        list = list.prepend(0)
    end
    p "A list com prepend é #{list}"

    (0..k-1).each do |i|
        list[i], list[length+i] = list[length+i], list[i]
    end

    p "A lista aqui é"
    p list
    
    p "Removing zero's in the end of list"
    list.pop(3)
    p list

    p "O resultado é"
    p list
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
reversal(list,k)

