# https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-A/ (read kujikuji comment for better explanation)

# form two digit numbers in a way the the sum of this two numbers is minimum

#Input : A[] = {2, 4, 1, 3}
#Output : 3

# So the minimum sum can always be (minimum of A[]) * (size of B[] (which equals n-1)).



def minimum_sum(array)
    p "A = #{A}"

    B_array =[0]

    p A.length
# until A.lenght = 1
    (0..A.length).each do |i|
        if A[i]>A[i+1]
            A.delete_at(i)
            B.append(A[i+1])
            p "B é:"
            p B
        elsif A[i]<A[i+1]
            A.delete_at(i+1)
            B.append(A[i])
            p "B é:"
            p B
        end
    end

end

A = [2,4,1,3]
minimum_sum(A)


