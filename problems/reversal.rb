# Reversal algorithm for right rotation of an array

# Given an array, right rotate it by k elements. 

# Input: arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
# k = 3
# Output: 8 9 10 1 2 3 4 5 6 7

def reversal(list,k)
    p "A lista inicialmente é"
    p list
    tamanho = list.length
    (0..tamanho).each do |i|
       list[i],list[i+3] = list[i+3], list[i]
       p list
    end 
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
reversal(list,k)