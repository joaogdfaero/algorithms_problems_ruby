
def common_characters(input)
  alphabet = ('a'..'z').to_a


  included = Array.new(input.length){Array.new(alphabet.length,0)} # nested array that will be populated it included letters

  # CREATE NESTED ARRAY WITH THE LETTERS OF EACH INPUT
  (0..alphabet.length-1).each do |i|
    (0..input.length-1).each do |j|
      if input[j].include?(alphabet[i])
        included[j][i] = alphabet[i]
      end
    end
  end

  # REDUCE CHECK COMMON ELEMENTS IN NESTED ARRAY
  included = included.reduce(:&)

  # REMOVE ZERO VALUES
  (0..included.length-1).each do |i|
    if included[i] == 0
      included.delete_at(i)
    end
  end
  p included



end


input = %w[geeksforgeeks gemkstones acknowledges aguelikes]
common_characters(input)
