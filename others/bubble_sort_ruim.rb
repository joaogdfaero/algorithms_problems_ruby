# https://www.geeksforgeeks.org/bubble-sort/

# Versão ruim do bubble sort, e que não funciona para arrays > 5

def bubble_sort (lista)
    p "A lista a ser ordenada é"
    p lista

    lista_ordenada = lista.sort
    p "A lista ordenada é"
    p lista_ordenada

while lista != lista_ordenada do
if lista[0]>lista[1]
    p "O primeiro é maior"
    first=lista[0]
    second=lista[1]
    lista[0]=lista[1]
    lista[1]=first
    p lista
elsif lista[1]>lista[2]
    first=lista[1]
    second=lista[2]
    lista[1]=lista[2]
    lista[2]=first
    p lista

elsif lista[2]>lista[3]
    first=lista[2]
    second=lista[3]
    lista[2]=lista[3]
    lista[3]=first
    p lista
end
end



end


#lista = [5, 1, 4, 2, 8]
p bubble_sort([5, 1, 4, 2, 8])