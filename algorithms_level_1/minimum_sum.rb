# https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-a/ (read kujikuji comment for better explanation)

# form two digit numbers in a way the the sum of this two numbers is minimum

#Input : a[] = {2, 4, 1, 3}
#Output : 3

# So the minimum sum can always be (minimum of a[]) * (size of b[] (which equals n-1)).



def minimum_sum(a)
    p "a = #{a}"

    b =[]
    
    size = a.length
    p size

    until size == 1 do
        (0..a.length).each do |i|
            if a[i]>a[i+1]
                a.delete_at(i)
                b.append(a[i+1])
                p "b é:"
                p b
                p "a é"
                p a
            elsif a[i]<a[i+1]
                a.delete_at(i+1)
                b.append(a[i])
                p "b é:"
                p b
                p "a é"
                p a
            end
        end
    end

end

a = [2,4,1,3]
minimum_sum(a)


