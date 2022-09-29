# https://www.geeksforgeeks.org/linear-search/

def linear_search(x)
    p "A lista de números é"
    lista = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]
    p lista

    p "O tamanho da lista é"
    tamanho = lista.length()
    p tamanho

    
    (0..tamanho-1).to_a.each  do |indice|
        if lista[indice]==x
            p "a posição do elemento é"
            return indice
        # else
        #     p "o elemento não está na lista"
        #     return false
        end
    end
end

# Elemento procurado
puts linear_search(30)
