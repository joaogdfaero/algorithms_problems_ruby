# https://www.geeksforgeeks.org/binary-search/

def binary_search(x)
    lista = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]
    lista = lista.sort # order the list

    tamanho_O = lista.length()

    menor = lista[0] # smallest term from list

    maior = lista[-1] # largest term from list

    if tamanho_O.odd?
        tamanho_O = tamanho_O + 1 
    end

    mediana = lista[tamanho_O/2] # mid term on list

    while lista[0] != lista[-1] do
        tamanho = lista.length()

        if x == lista[tamanho/2]
            return (tamanho/2+(tamanho_O-tamanho))

        elsif x>lista[tamanho/2]
            lista=lista.drop(tamanho/2) 
        elsif x < lista[tamanho/2]
            lista=lista.pop(tamanho/2)
        end
        
    end

end

# Elemento procurado
puts binary_search(110)


