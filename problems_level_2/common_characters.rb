
def common_characters(input)
  alphabet = ('a'..'z').to_a

  included = Array.new(alphabet.length,0) # array that will be populated it included letters
  (0..alphabet.length-1).each do |i|
    (0..input.length-1).each do |j|
      input[j].include?(alphabet[i])
    end

  end

  input[2].include?(alphabet[0])

end


input = %w[geeksforgeeks gemkstones acknowledges aguelikes]
common_characters(input)