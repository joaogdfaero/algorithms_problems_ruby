# https://www.geeksforgeeks.org/queries-to-find-the-future-closest-date/


def find_future(a,q)
    a1 = []
    a2 = []
    a3 = []
    a4 = []
    arrays = [a1 , a2 , a3 ,a4] # arrays que vão conter a posição de /

     (0..a.length-1).each do |i|
        (0..a[i].length-1).each do |j|
            if a[i][j] == "/"
                p "Achou o / no item #{i} de a na posição #{j}"
                arrays[i].append(j)
                p arrays
            end
        end
        
     end

     # Year difference

    
end

a = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
q = ["23/3/4345", "12/3/2"]

find_future(a,q)