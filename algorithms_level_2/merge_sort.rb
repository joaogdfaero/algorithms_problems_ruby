# https://www.geeksforgeeks.org/merge-sort/
# https://www.youtube.com/watch?v=4VqmGXwpLqc&ab_channel=MichaelSambol

# GITHUB SOLUTION https://gist.github.com/bih/9726300

class MergeSortAlgorithm
  def sort(numbers)  # Break's the array down into two numbers (number A and number B) and sorts them.
    if numbers.size <= 1
      return numbers
    end

    array_size = numbers.size
    half_of_size = (array_size/2).round

    left_array = numbers.take(half_of_size)
    right_array = numbers.drop(half_of_size)

    sorted_left_array = sort(left_array)
    sorted_right_array = sort(right_array)

    merge(sorted_left_array,sorted_right_array)
  end

  def merge(left_array, right_array)
    if right_array.empty?
      return left_array # We have nothing to compare. Left wins.
    end

    if left_array.empty?
      return right_array
    end

    smallest_number = if left_array.first <= right_array.first
                        left_array.shift
                      else
                        right_array.shift
                      end
    # We keep doing it until the left or right array is empty.
    recursive = merge(left_array,right_array)

    # Okay, either left or right array are empty at this point. So we have a result.
    [smallest_number].concat(recursive)


  end



end

merge_sort = MergeSortAlgorithm.new
puts merge_sort.sort([4, 92, 1, 39, 19, 93, 49, 10].shuffle)


# How it works
# 1. Let's say the input is [4, 92, 1, 39, 19, 93, 49, 10]
# 2. Break them down in halfs. So we now have [4, 92, 1, 39] and [19, 93, 49, 10]
# 3. Break them again in halfs. Let's start with the first. So now we have [4, 92] and [1, 39]
# 4. Break until there's only one item in each. So now we have [4] and [92]
# 5. Check which one is lower. So in this case, we know 4 is lower than 92. Let's rearrange it if necessary.
# 6. Now we have [4, 92] and we do the same for [1, 39]
# 7. We now create a new array. []
# 8. We check the first element on the left array versus the first element on the right array (i.e. 4 >= 9) and then add them to the new array.
# 9. Keep doing that until it's done.
