# https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-a/ (read kujikuji comment for better explanation)

def minimum_sum(a)
    b =[]
    
    while a.length != 1
            if a[0]>a[1]
                a.delete_at(0)
                b.append(a[1])" 
            elsif a[0] < a[1]
                a.delete_at(1)
                b.append(a[0])
            end
    end
    
    return a[0]*b.length
end

a = [2,4,1,3]
minimum_sum(a)


