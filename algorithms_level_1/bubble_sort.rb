
def bubble_sort (lista)
    tamanho = lista.length # contain list length
    
    (0..3).each do |j|
        (0..j).each do |i|
            if lista[i]>lista[i+1]
               lista[i],lista[i+1] = lista[i+1], lista[i] # swap elements location based on wich element is greater
            end
        end
    end
    
    return lista
end

lista = [10, 4, 3, 50, 23, 90]
input = bubble_sort(lista)
