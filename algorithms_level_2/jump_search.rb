# https://www.geeksforgeeks.org/jump-search/


def jump_search(array,step, x)
  m = step
  (0..(array.length - 1)/m).each do |i|
    if array[m*i] == x
      p "O termo #{x} está na posição #{m*i}"
    elsif array[m*i] > x
      (m*(i-1)..m*i).each do |i|
        if array[i] == x
          p "O termo #{x} está na posição #{i}"
        end
      end
    end
  end



end


array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
step = 4
  x = 55
jump_search(array, step, x)
