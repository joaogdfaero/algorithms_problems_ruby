# https://www.geeksforgeeks.org/binary-search/

def binary_search(x)
    p "A lista de números é"
    lista = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]
    p lista

    p "A lista ordenada é"
    lista = lista.sort
    p lista

    if lista.include? x
        p "O elemento está na lista"
    else
        p "O elemento NÃO está na lista"
        exit
    end

    p "O tamanho original da lista é"
    tamanho_O = lista.length()
    p tamanho_O

    p "O menor termo da lista é"
    menor = lista[0] 
    p menor

    p "O maior termo da lista é"
    maior = lista[-1]
    p maior

    if tamanho_O.odd?
        tamanho_O = tamanho_O + 1 
    end

    p "o termo do meio da lista"
    mediana = lista[tamanho_O/2]
    p mediana

    while lista[0] != lista[-1] do
        p "O novo tamanho da lista é"
        tamanho = lista.length()
        p tamanho

        if x == lista[tamanho/2]
            p "O termo procurado está em"
            return (tamanho/2+(tamanho_O-tamanho))

        elsif x>lista[tamanho/2]
            p ">"
            lista=lista.drop(tamanho/2) 
            p lista
        elsif x < lista[tamanho/2]
            p "<"
            lista=lista.pop(tamanho/2)
            p lista
        end
        
    end

end

# Elemento procurado
puts binary_search(110)

# if x==mediana
#     p "o valor procurado está na posição:"
#     return tamanho/2
#  elsif x > mediana 
#     p "o valor procurado é maior que a mediana:"
#     lista = lista.drop(tamanho/2)
#     return lista
#  else x < mediana
#     p "o valor procurado é menor que a mediana:"
#     lista.pop(tamanho/2)
#     return lista 
#  end