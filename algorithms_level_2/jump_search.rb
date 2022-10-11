# https://www.geeksforgeeks.org/jump-search/


def jump_search(array,step, x)
  m = step
  (0..(array.length)/m).each do |i|
    if array[m*i] == x
      p "achou o x"
    else
      p "não achou"
    end
  end
  p array


end


array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
step = 4
  x = 55
jump_search(array, step, x)
