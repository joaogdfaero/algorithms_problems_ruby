# https://www.geeksforgeeks.org/find-the-missing-number

def find_missing_number(array)
  numbers = (1..array.max).to_a
  presence = Array.new(numbers.length,0) # array that will register the presence or not of a number

  (0..numbers.length).each do |i|
    (0..array.length).each do |j|
      if array[j] == numbers[i]
        presence[i]=1
      else
      end
    end
  end

  (0..presence.length-1).each do |i|
    if presence[i] == 0
      p "The missing number between #{array[0]} and #{array[array.length-1]} is #{i+1}"
    end
  end
end

array = [1,2,3,4,6,3,7,8]
find_missing_number(array)
