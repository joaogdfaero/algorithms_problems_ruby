# https://www.geeksforgeeks.org/quick-sort/
# https://www.youtube.com/watch?v=PgBzjlCcFvc&ab_channel=GeeksforGeeks



def quick_sort(unsorted_array)
  # In case the array is already sorted
  if unsorted_array == unsorted_array.sort
    p unsorted_array
  else
    # make the last element the pivot element
    pivot_index = unsorted_array.length - 1

    i = -1 # i starts with as -1

    # transverse from 10 to 50
    (0..unsorted_array.length-2).each do |j|
      if unsorted_array[j] <= unsorted_array[pivot_index]
        # if "j" is lesser than pivot, change i with j
        i = i + 1
        unsorted_array[j],unsorted_array[i] = unsorted_array[i], unsorted_array[j]
      end
    end

    p unsorted_array

    # swap i+1 with pivot
    unsorted_array[pivot_index],unsorted_array[i+1] = unsorted_array[i+1], unsorted_array[pivot_index]

    p unsorted_array

    # apply quick-sort to left and right part (recursion?)
    recursive = quick_sort(unsorted_array)
    p "recursive is #{recursive}"

  end

end

#unsorted_array = [10, 80, 30, 90, 40, 50, 70]
unsorted_array = [10, 30, 40, 50, 80, 90]

quick_sort(unsorted_array)