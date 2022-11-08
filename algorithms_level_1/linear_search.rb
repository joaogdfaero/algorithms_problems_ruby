# https://www.geeksforgeeks.org/linear-search/

def linear_search(x)
    # NUMBERS LIST
    lista = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]

    # NUMBERS LIST SIZE
    tamanho = lista.length()
   
    (0..tamanho-1).to_a.each  do |indice|
        if lista[indice]==x
             return indice
        end
    end
end


puts linear_search(30)
