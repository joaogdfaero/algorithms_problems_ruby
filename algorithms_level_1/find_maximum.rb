# https://www.geeksforgeeks.org/find-maximum-sum-possible-equal-sum-three-stacks/

# ALGORITHM
    #1. Find the sum of all elements of in individual stacks.
    #2. If the sum of all three stacks is the same, then this is the maximum sum.
    #3. Else remove the top element of the stack having the maximum sum among three of stacks. 
    #4. Repeat step 1 and step 2.

def find_maximum(a,b,c)
    sum_a = 0
    (0..a.length-1).each do |i|
        sum_a = sum_a + a[i] 
    end

    sum_b = 0
    (0..b.length-1).each do |i|
        sum_b = sum_b + b[i] 
    end


    sum_c = 0
    (0..c.length-1).each do |i|
        sum_c = sum_c + c[i] 
    end



    if sum_a == sum_b && sum_b == sum_c
        p "Maximum sum is #{sum_a}"
    else
        (0..15).each do |j|
            # ITERATING SUMS
            sum_a = 0
            (0..a.length-1).each do |i|
                sum_a = sum_a + a[i] 
            end
        
            sum_b = 0
            (0..b.length-1).each do |i|
                sum_b = sum_b + b[i] 
            end
        
            sum_c = 0
            (0..c.length-1).each do |i|
                sum_c = sum_c + c[i] 
            end

            sums = [sum_a,sum_b,sum_c]
            p "Maximum sum is #{sums.max}"

            if sum_a == sum_b && sum_b == sum_c
                p "Maximum sum is #{sum_a} "
                break
            elsif sums[0]==sums.max
                a.delete_at(0)
            elsif sums[1]==sums.max
                b.delete_at(0)
            elsif sums[2]==sums.max
                c.delete_at(0)
            end  
        end 
    end
end


a = [3,2,1,1,1]
b = [4,3,2]
c = [2,5,4,1]
find_maximum(a,b,c)
