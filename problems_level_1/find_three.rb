# Given an array with all distinct elements, find the largest three elements. Expected time complexity is O(n) and extra space is O(1). 

# Examples :

# Input: arr[] = {10, 4, 3, 50, 23, 90}
# Output: 90, 50, 23

# First, order the itens using bubble sort
def bubble_sort (lista)
    tamanho = lista.length
    
    (0..3).each do |j|
        (0..j).each do |i|
            if lista[i]>lista[i+1]
               lista[i],lista[i+1] = lista[i+1], lista[i]
            end
        end
    end

    return lista
end

lista = [10, 4, 3, 50, 23, 90]
input = bubble_sort(lista)

def find_three(input)
    tamanho = input.length # length of list to be ordered
    
    input = input.drop(tamanho-3) 
    p input
end

find_three(input)

#input = [10, 4, 3, 50, 23, 90]




#find_three(input)
