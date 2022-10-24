# https://www.geeksforgeeks.org/counting-sort/

# Explicação do counting sort
# https://www.youtube.com/watch?v=OKd534EWcdk&ab_channel=CSDojo

# ... Holy crap, this makes so much sense.
#You count how many of each digit there is, and then you determine each digit's starting position by counting how many cells are taken up by the digits before it!

def counting_sort(lista)
    p lista

    # count ocurrence of each number in list
    count = Array.new(10,0) # count array

    index = Array(0..9)
    p index

    p

    (0..9).each do |j|
        (0..lista.length-1).each do |i|
            if lista[i] == j
                count[j] = count[j] + 1
            end
    end
    end

    # count array with sum of previous elements
    (1..count.length-1).each do |i|
        count[i] = count [i] + count[i-1]
    end

    # rotate the array clockwise for one time
    count = count.rotate(-1)
    count[0] = 0

    p count

    # print elements in order
    result = Array.new(lista.length,0)

    (0..lista.length-1).each do |i|
        result[count[lista[i]]] = lista [i]
    end

    (0..lista.length-1).each do |i|
        if result[i] == 0
            result.delete_at(i)
        end
    end



    p result








end
# 1 - Conta as ocorrências de cada número do array
# 2 - Nesse novo array das somas das ocorrências, mantém o primeiro termo
# mas soma o da direita com o da esquerda nos anteriores, criando um novo array
# 3 - Pega uma lista de indexação (0,1,2,3...) e preenche ela da direita
# para a esquerda pegando desde o penúltimo termo do array do passo 2 da esquerda 
# para a direita. Essa última tabela seria o "starting index", a posição de início ordenada dos
# termos do array inicial

p counting_sort([1, 4, 1, 2, 7, 5, 2])

