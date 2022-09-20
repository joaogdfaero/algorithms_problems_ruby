# Ordena os ítens usando Bubble sort
def bubble_sort (lista)
    tamanho = lista.length


    (0..3).each do |j|
        (0..j).each do |i|
            p "O indice i é "
            p i
            if lista[i]>lista[i+1]
               lista[i],lista[i+1] = lista[i+1], lista[i]
               p "A lista é"
               p lista
            end
        end
    end

    return lista
end

lista = [10, 4, 3, 50, 23, 90]
input = bubble_sort(lista)
