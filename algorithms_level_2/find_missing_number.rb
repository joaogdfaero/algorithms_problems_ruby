# https://www.geeksforgeeks.org/find-the-missing-number/

def find_missing_number(array)
  numbers = Array(1..array[array.length-1]) # create array with all elements

  (0..array.length-1).each do |i|
    (0..array.length).each do |j|
      if array[i] == j
        p "o número é é #{array[i]}"
        p "j e #{j}"
        p "é ingual" # cada um tem que ter pelo menos 1 é ingual
      else
        p "o número é #{array[i]}"
        p "j e #{j}"
        p "não é ingual"
      end
    end
  end



end

array = [1, 2, 4, 6, 3, 7, 8]
find_missing_number(array)