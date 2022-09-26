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

    #list[0],list[1],list[2],list[3],list[4],list[5],list[6],list[7],list[8],list[9] = list[0+k],list[1+k],list[2+k],list[3+k],list[4+k],list[5+k],list[6+k],list[0],list[1],list[2]
    list[0],list[1],list[2],list[3] = list[0+k],list[1+k],list[2+k],list[3+k] 
    p "O resultado é"
    p list
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
reversal(list,k)

#Parei aqui