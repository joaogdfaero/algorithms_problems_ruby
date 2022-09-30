# https://www.geeksforgeeks.org/maximize-array-sun-after-k-negation-operations/

def maximize_array(a,k)
    # 1 find minimum number in array
    # 2 turn that number to number = - number
    # 3 do that k times
    # 4 sum all numbers in the final array
    p "A lista é #{a}"

    count = 0 # stops when count = k

    (0..100).each do |i|  
        p "o mínimo é #{a.min}"
        if a[i] == a.min # isn't working because the code isn't entering this loop when a[i] == 0
            a[i] = - a[i]
            count = count +1
            p "count é #{count}"
            p "k é #{k}"
            p "a agora é #{a}"
            if count == k
                p "O K MÁXIMO FOI ALCANÇADO"
                break # stops everthing when k is reached
            end
        end
    end

end



a = [-2, 0, 5, -1, 2]
k = 4
maximize_array(a,k)