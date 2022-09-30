# https://www.geeksforgeeks.org/maximize-array-sun-after-k-negation-operations/

def maximize_array(a,k)
    # 1 find minimum number in array
    # 2 turn that number to number = - number
    # 3 do that k times
    # 4 sum all numbers in the final array

    (0..k-1).each do |i|  # isn't working because the code isn't switching the number k times
        p "o mínimo é #{a.min}"
        if a[i] == a.min
            a[i] = - a[i]
            p "a agora é #{a}"
        end
    end

end



a = [-2, 0, 5, -1, 2]
k = 4
maximize_array(a,k)