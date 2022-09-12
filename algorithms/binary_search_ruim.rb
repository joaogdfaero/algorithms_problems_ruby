# https://www.geeksforgeeks.org/binary-search/

# Essa solução é ruim pois precisamos escrever manualmente o código toda vez que dividimos a lista pela metade


def binary_search(x)
    p "A lista de números é"
    lista = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]
    p lista

    p "A lista ordenada é"
    lista = lista.sort
    p lista

    p "O tamanho da lista é"
    tamanho = lista.length()
    p tamanho

    # caso o tamanho seja ímpar
    if tamanho.odd?
        tamanho = tamanho + 1
        p "tamanho corrigido"
        p tamanho
    end

    p "A mediana é:"
    p mediana = lista[tamanho/2]

    p "O valor procurado é"
    p x
    p "____________________"

     if x==mediana
        p "o valor procurado está na posição:"
        return tamanho/2
     elsif x > mediana 
        p "o valor procurado é maior que a mediana:"
        lista = lista.drop(tamanho/2)
        return lista
     else x < mediana
        p "o valor procurado é menor que a mediana:"
        lista.pop(tamanho/2)
        return lista 
     end
    
#     (0..tamanho-1).to_a.each  do |indice|
#         if lista[indice]==x
#             p "a posição do elemento é"
#             return indice
#         end
#     end
end

# Elemento procurado
puts binary_search(10)
