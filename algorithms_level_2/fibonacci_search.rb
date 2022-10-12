# https://www.geeksforgeeks.org/fibonacci-search/

def fibonacci_search(array,x,n)
  fibonacci_numbers = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233]

  # find smallest closest fibonacci number
  distance = Array.new(fibonacci_numbers.length,0) #array to store distance between numbers
  (0..fibonacci_numbers.length-1).each do |i|
    distance[i]=fibonacci_numbers[i]-n
  end

  (0..fibonacci_numbers.length-1).each do|i|
    if distance[i] < 0
      distance[i] = 1/0.0
    end
  end
  p distance.min_by


  # m_th
  # m_th1
  # m_th2


end


array = [2,3,4,10,40]
x = 10
n= array.length
fibonacci_search(array,x,n)