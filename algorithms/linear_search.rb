


def linear_search(x)
    p "A lista de números é"
    lista = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]
    p lista

    p "O tamanho da lista é"
    tamanho = lista.length()
    p tamanho


    #indice = (0..tamanho).to_a
    
    (0..tamanho-1).to_a.each  do |indice|
        puts "elementos da lista: " + lista[indice].to_s
    end


   
end


puts linear_search(110)
