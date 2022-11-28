# https://www.geeksforgeeks.org/maximize-array-sun-after-k-negation-operations/
 # ALGORITHM:
    # 1. find minimum number in array
    # 2. turn that number to number = - number
    # 3. do that k times
    # 4. sum all numbers in the final array

def maximize_array(a,k)
 
    tamanho = a.length
    count = 0 # stops when count = k
 
(1..tamanho).each do |j| 
    (0..j).each do |i|  
        if a[i] == a.min 
            a[i] = - a[i]
            count = count +1
            if count == k 
                break # stops everthing when k is reached
            end
        end
    end
end

p "Returned list is #{a}"

sum = 0
   (0..a.length-1).each do |i|
    sum = sum + a[i]
   end

return sum
end

a = [-2, 0, 5, -1, 2]
k = 4
maximize_array(a,k)
