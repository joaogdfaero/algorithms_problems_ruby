# REFERENCE: https://medium.com/@allegranzia/merge-sort-in-ruby-102b750af287

def merge_sort(unsorted_array)
  # if array only has one element or fewer there is nothing to do except print
  if unsorted_array.length <=1
    return unsorted_array
  else
    # divding and then merge-sorting the halves
    mid = unsorted_array.length/2
    first_half = merge_sort(unsorted_array.slice(0...mid))
    second_half = merge_sort(unsorted_array.slice(mid...unsorted_array.length))
    merge(first_half,second_half)
  end
end

def merge(left_array, right_array) # method that given two arrays can merge them into one array in order.
  sorted_array = []
  # If either array is empty we don't need to compare them

  p "antes"
  p left_array
  p right_array

  while !left_array.empty? && !right_array.empty? do # while the arrays are not empty
    # we are shifting out the compared/used values so we don't repeat
    if left_array[0] < right_array[0]
      sorted_array.push(left_array.shift)
    else
      sorted_array.push(right_array.shift)
    end
  end

  p "depois"
  p left_array
  p right_array

  p "sorted array"
  p sorted_array

  #concat appends elements of another array to an array
  # concatenates all elements from left or right array who whore not shifted (deleted from array and pushed to sorted_array) in while loop line 20
  return sorted_array.concat(left_array).concat(right_array)
end

p merge_sort([33,4,500,1,2])