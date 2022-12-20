# Reversal algorithm for right rotation of an array

# Given an array, right rotate it by k elements.

# Input: arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
# k = 3
# Output: 8 9 10 1 2 3 4 5 6 7

def reversal(list,k)

    length = list.lengt
    
    # Create a zeros array with length k
    arr = Array.new(k, 0)


    # Prepend that array to our list
    (0..k-1).each do
        list = list.prepend(0)
    end
    
    # iterate and swop adjacent elements
    (0..k-1).each do |i|
        list[i], list[length+i] = list[length+i], list[i]
    end
    
    # Removing zero's in the end of list
    list.pop(k)
    
    # result is
    p list
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
reversal(list,k)

