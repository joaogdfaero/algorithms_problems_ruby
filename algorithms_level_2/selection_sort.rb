def selection_sort(array)


  (0..array.length-1).each do |i|
    index_min = array[i..array.length].index(array[i..array.length].min) # index o minimum element in array
    # array[i..array.length][0],array[i..array.length][index_min] = array[i..array.length][index_min],array[i..array.length][0]
    array[0],array[index_min] = array[index_min],array[0]
    p array



  end
  p array
end

array = [64, 25, 12, 22, 11]
selection_sort(array)