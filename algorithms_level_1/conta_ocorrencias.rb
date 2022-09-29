# método para calcular quantas vezes um número aparece na lista

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
    p "______________"

    (0..tamanho).to_a.each do |indice| 
        if lista[indice]==5
            p "o indice é"
            p indice
            p "a contagem é"
            p contagem
            p "temos o mesmo elemento, logo a contagem virou"
            contagem = contagem + 1
            p contagem
            #return contagem # NÃO DÁ PRA DEIXAR SE NÃO PARA A FUNÇÃO
        end
    end
end