def selection_sort(array)

  (0..array.length-1).each do |i|
    index_min = array[i..array.length].index(array[i..array.length].min) + i # index o minimum element in array, the "+ i" makes shure that i will not take in consideration the already sorted terms
    # array[i..array.length][0],array[i..array.length][index_min] = array[i..array.length][index_min],array[i..array.length][0]
    array[i],array[index_min] = array[index_min],array[i]
    p array



  end
  p array
end

array = [64, 25, 789, 12, 22, 11]
selection_sort(array)