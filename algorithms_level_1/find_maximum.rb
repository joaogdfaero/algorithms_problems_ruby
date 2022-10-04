# https://www.geeksforgeeks.org/find-maximum-sum-possible-equal-sum-three-stacks/

def find_maximum(a,b,c)
    p a
    p b
    p c
    sum_a = 0
    (0..a.length-1).each do |i|
        sum_a = sum_a + a[i] 
    end
    p "A soma de a é #{sum_a}"

    sum_b = 0
    (0..b.length-1).each do |i|
        sum_b = sum_b + b[i] 
    end
    p "A soma de b é #{sum_b}"


    sum_c = 0
    (0..c.length-1).each do |i|
        sum_c = sum_c + c[i] 
    end
    p "A soma de c é #{sum_c}"



    if sum_a == sum_b && sum_b == sum_c
        p "A soma é #{sum_a}"
    else
        
        (0..2).each do |i|
            sums = [sum_a,sum_b,sum_c]
            p "a soma máxima é #{sums.max}"
            if sums[0]==sums.max
                a.delete_at(0)
                p "0"
                p a
            elsif sums[1]==sums.max
                b.delete_at(0)
                p "1"
                p b
            elsif sums[2]==sums.max
                c.delete_at(0)
                p "2"
                p c
            end
        end
            
        
    end




    #Find the sum of all elements of in individual stacks.
    #If the sum of all three stacks is the same, then this is the maximum sum.
    #Else remove the top element of the stack having the maximum sum among three of stacks. 
    #Repeat step 1 and step 2.

end


a = [3,2,1,1,1]
b = [4,3,2]
c = [2,5,4,1]
find_maximum(a,b,c)