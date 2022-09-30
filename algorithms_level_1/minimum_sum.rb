# https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-a/ (read kujikuji comment for better explanation)

# form two digit numbers in a way the the sum of this two numbers is minimum

#Input : a[] = {2, 4, 1, 3}
#Output : 3

# So the minimum sum can always be (minimum of a[]) * (size of b[] (which equals n-1)).



def minimum_sum(a)
    p "a = #{a}"

    b =[]
    
    while a.length != 1
        p "a tem um tamanho #{a.length}"
        #(0..a.length).each do |i| -> THIS IS MAKING THE LOOP TO RUN MORE TIMES THAN IT NEEDED, RESULTING ON ERROS
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
    
    p "a final é"
    p a
    p "b final é"
    p b

    p "O resultado final é #{a[0]*b.length}"

end

a = [2,4,1,3]
minimum_sum(a)


