# https://www.geeksforgeeks.org/counting-sort/

# Explicação do counting sort
# https://www.youtube.com/watch?v=OKd534EWcdk&ab_channel=CSDojo

# ... Holy crap, this makes so much sense.
#You count how many of each digit there is, and then you determine each digit's starting position by counting how many cells are taken up by the digits before it!

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
     contagem=Array.new(tamanho, 0)
    p "______________"
    # untill indice = tamanho + 1
    #while indice != tamanho 
    (0..tamanho-1).to_a.each do |indice| # NÃO FUNCIONA PORQUE ELE CONTA CADA NÚMERO SÓ 1X
        if index[indice] in lista
            p "o indice é"
            p indice
            p "a contagem é"
            p contagem
            p "temos o mesmo elemento, logo a contagem virou"
            contagem[indice] = contagem[indice]+1
            p contagem
        else
            p "não temos o elemento"
        end
    end
end
# 1 - Conta as ocorrências de cada número do array
# 2 - Nesse novo array das somas das ocorrências, mantém o primeiro termo
# mas soma o da direita com o da esquerda nos anteriores, criando um novo array
# 3 - Pega uma lista de indexação (0,1,2,3...) e preenche ela da direita
# para a esquerda pegando desde o penúltimo termo do array do passo 2 da esquerda 
# para a direita. Essa última tabela seria o "starting index", a posição de início ordenada dos
# termos do array inicial

p counting_sort([1, 4, 1, 2, 7, 5, 2])

