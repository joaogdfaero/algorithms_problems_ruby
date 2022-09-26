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
    (0..(tamanho/3).to_int-1).each do |i|
       list[i],list[i+3] = list[i+3], list[i]
       p list
    end 


    # coloca o 7 no final
    list[6],list[9]=list[9],list[6]
    p "Arrumando o final"
    p list
    list[6],list[8]=list[8],list[6]
    p list
    list[6],list[7]=list[7],list[6]
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
reversal(list,k)

#Parei aqui