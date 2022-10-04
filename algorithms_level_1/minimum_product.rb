# Minimum product subset of an array
# https://www.geeksforgeeks.org/minimum-product-subset-array/

# We must find the subset of the array that gives us the minimum product result (most negative or lowest number)

def minimum_product(a)
    # count number of zeros
    count_z = 0
    (0..a.length-1).each do |i|
        if a[i]==0
            p "é zero"
            count_z = count_z + 1
            p "Temos #{count_z} zeros"
        end
    end

    # count number of even
    count_e = 0
    (0..a.length-1).each do |i|
        if a[i] != 0
            if (a[i]).remainder(2) == 0
                p "é par"
                count_e = count_e + 1
                p "Temos #{count_e} par"
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




# 1. If there are even number of negative numbers and no zeros, the result is the product 
#of all except the lowest valued negative number.


# 2. If there are an odd number of negative numbers and no zeros, the result is simply the product of all.


# 3. If there are zeros and positive, no negative, the result is 0. 
#The exceptional case is when there is no negative number and all 
#other elements positive then our result should be the first minimum positive number.


end


a = [-1, -1, -2, 4, 3]
minimum_product(a)