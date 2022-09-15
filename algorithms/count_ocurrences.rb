# método para calcular quantas vezes um número aparece na lista

def counting_sort(lista)
    p "A lista a ser ordenada é"
    p lista

    # criando um index
    index = (0..lista.length()).to_a
    p index

    # tamanho da lista
    tamanho = lista.length()
    p "O tamanho da lista é"
    p tamanho

     indice =0
     contagem=0
    
    while indice != tamanho 
    (0..tamanho).to_a.each do |indice| 
        p indice
        if lista[indice]==5
            p "o indice é"
            p indice
            p "o tamanho é"
            p tamanho
            p "temos o mesmo elemento"
            contagem = contagem + 1
            return contagem
        end
    end
    end
end


p counting_sort([1, 4, 1, 2, 5, 5, 2])