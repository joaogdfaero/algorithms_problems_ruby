# Minimum product subset of an array
# https://www.geeksforgeeks.org/minimum-product-subset-array/

# We must find the subset of the array that gives us the minimum product result (most negative or lowest number)
def minimum_product(a)
    # count number of zeros
    count_z = 0
    (0..a.length-1).each do |i|
        if a[i]==0
            count_z = count_z + 1
        end
    end

    # count number of even
    count_e = 0
    (0..a.length-1).each do |i|
        if a[i] != 0
            if (a[i]).remainder(2) == 0
                count_e = count_e + 1
            end
        end
    end

    # count number of odd
    count_o = a.length - count_e - count_z
    p "Temos #{count_o} ímpares"

    # count positives
    count_p = 0
    (0..a.length-1).each do |i|
        if a[i] > 0
            count_p = count_p + 1
            p count_p
            p "Temos #{count_p} positivos"
        end
    end

    # count negatives
    count_n = 0
    (0..a.length-1).each do |i|
        if a[i] < 0
            count_n = count_n + 1
            p count_n
            p "Temos #{count_n} negativos"
        end
    end

     # caso 3.1
     if count_p == a.length
        p "A soma é #{a.max}"
        exit
     end


    

    # caso 2
    if (count_n).remainder(2) != 0
        if count_z == 0
            prod = 1
            (0..a.length-1).each do |i|
            prod=prod*a[i]

            end
        end
        p "o produto é"
        p prod
    end

    # caso 1
    if count_z == 0
        if (count_n).remainder(2) == 0
            (0..a.length-1).each do |i|
                if a[i] == a.min
                    a.delete_at(i)
                end
            end
        end
    prod = 1
    (0..a.length-1).each do |i|
        prod = prod*a[i]
    end
    p "O produto é"
    p prod
    end

    # caso 3
    if count_p > 1
        if count_n == 0
            if count_o !=0
                p "o produto é 0"
            end
        end
    end

   



# 1. If there are even number of negative numbers and no zeros, the result is the product 
#of all except the lowest valued negative number.


# 2. If there are an odd number of negative numbers and no zeros, the result is simply the product of all.


# 3. If there are zeros and positive, no negative, the result is 0. 
#The exceptional case is when there is no negative number and all 
#other elements positive then our result should be the first minimum positive number.


end


a = [1, 1, 19, 4, 3]
minimum_product(a)
