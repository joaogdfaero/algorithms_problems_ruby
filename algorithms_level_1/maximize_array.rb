# https://www.geeksforgeeks.org/maximize-array-sun-after-k-negation-operations/

def maximize_array(a,k)
    # 1 find minimum number in array
    # 2 turn that number to number = - number
    # 3 do that k times
    # 4 sum all numbers in the final array
    p "A lista é #{a}"

    tamanho = a.length

    count = 0 # stops when count = k
(1..tamanho).each do |j| # WE HAVE TO SEE WHAT IS THE EFFECT OF THE DOUBLE LOOP
    (0..j).each do |i|  
        p "o mínimo é #{a.min}"
        p "a agora é #{a[i]}"
        if a[i] == a.min # the code isn't entering this loop when a[i] == 0 because i is larger than 0 position in array
            a[i] = - a[i]
            count = count +1
            p "count é #{count}"
            p "A lista é #{a}"
            p "k é #{k}"
            if count == k 
                p "O K MÁXIMO FOI ALCANÇADO"
                break # stops everthing when k is reached
            end
        end
    end
end

p "A lista retornada é #{a}"
sum = 0
   (0..a.length-1).each do |i|
    sum = sum + a[i]
   end

p "A soma final é #{sum}"

end



a = [-2, 0, 5, -1, 2]
k = 4
maximize_array(a,k)