# https://www.geeksforgeeks.org/merge-sort/
# https://www.youtube.com/watch?v=4VqmGXwpLqc&ab_channel=MichaelSambol

# STEPS:
# 1. DIVIDE THE ARRAY IN HALF UNTIL WE GET ATOMIC ELEMENTS
# 2. COMPARE EACH ATOMIC ELEMENT (FROM LEFT TO RIGHT) AND START MERGING ARRAYS
# 3. DO STEP 2 UNTIL YOU GET THE FULL COMPLETED SORTED ARRAY
# (watch youtube video for a better understanding)

def merge_sort(input)
  first_index = 0
  last_index = input.length-1
  mid_index = (first_index + last_index -1)/2


  left_array = []
  right_array = []

  (0..input.length-1).each do |i|
    if i < mid_index
      left_array[i]=input[i]
    else
      right_array[i-left_array.length]=input[i]
    end
  end

  p left_array
  p right_array














end

input = [38, 27, 43, 3, 9, 82, 10]
merge_sort(input)
