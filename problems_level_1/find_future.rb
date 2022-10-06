# https://www.geeksforgeeks.org/queries-to-find-the-future-closest-date/


def find_future(a,q)
    a1 = []
    a2 = []
    a3 = []
    a4 = []
    arrays = [a1,a2,a3,a4] # arrays que vão conter a posição de / para a

     (0..a.length-1).each do |i|
        (0..a[i].length-1).each do |j|
            if a[i][j] == "/"
                arrays[i].append(j)
            end
        end  
     end

     q1 = []
     q2 = []
     qarrays = [q1,q2]

     (0..q.length-1).each do |i|
        (0..q[i].length).each do |j|
            if q[i][j] == "/"
                qarrays[i].append(j)
            end
        end
     end

     p "arrays"
     p arrays

     p "qrrays"
     p qarrays

    # Year difference
    year_diff = [] # array that will contain the difference in years
     (0..a.length-1).each do |i|
        (0..q.length-1).each do |j|
            year_a = a[i][arrays[i][1]+1..a[i].length-1].to_i
            year_q = q[j][qarrays[j][1]+1..q[j].length-1].to_i

            year_diff.append(year_a-year_q)
            p "Diferença entre o termo #{i} de a e #{j} de q é  #{year_a - year_q}"
        end  
     end
     p year_diff

     # Month difference
     month_diff = []
     (0..a.length-1).each do |i|
        (0..q.length-1).each do |j|
            month_a = a[i][arrays[i][0]+1..arrays[i][1]-1]

        end
     end






    
end

a = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
q = ["23/3/4345", "12/3/2"]

find_future(a,q)