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

def merge(left_array, right_array)
  sorted_array = []
  # If either array is empty we don't need to compare them

  while !left_array.empty? && !right_array.empty? do

  end
end