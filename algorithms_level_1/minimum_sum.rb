# https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-a/ (read kujikuji comment for better explanation)

def minimum_sum(a)
    p "a = #{a}"
    b =[]
    
    while a.length != 1
        p "a tem um tamanho #{a.length}"
            if a[0]>a[1]
                a.delete_at(0)
                b.append(a[1])
                p "b é:"
                p b
                p "a é"
                p a
            elsif a[0]<a[1]
                a.delete_at(1)
                b.append(a[0])
                p "b é:"
                p b
                p "a é"
                p a
            end
    end
    
    p "Final result is #{a[0]*b.length}"

end

a = [2,4,1,3]
minimum_sum(a)


