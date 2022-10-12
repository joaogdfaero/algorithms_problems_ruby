
def common_characters(input)
  alphabet = ('a'..'z').to_a


  included = Array.new(input.length){Array.new(alphabet.length,0)} # nested array that will be populated it included letters

  (0..alphabet.length-1).each do |i|
    (0..input.length-1).each do |j|
      if input[j].include?(alphabet[i])
        included[j][i] = alphabet[i]
      end
    end
  end

  p included

end


input = %w[geeksforgeeks gemkstones acknowledges aguelikes]
common_characters(input)