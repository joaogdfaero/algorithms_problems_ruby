# REFERENCE: https://medium.com/@allegranzia/merge-sort-in-ruby-102b750af287

def merge_sort(unsorted_array)
  # divding and then merge-sorting the halves
  mid = unsorted_array.length/2
  first_half = merge_sort(unsorted_array.slice(0...mid))
  second_half = merge_sort(unsorted_array.slice(mid...unsorted_array.length))

  print first_half
  print second_half
  end
end

