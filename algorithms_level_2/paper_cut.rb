# PROBLEM: https://www.geeksforgeeks.org/paper-cut-minimum-number-squares/

class Algorithms_Level2
  def paper_cut(a, b)

    # FIND SMALLEST SIDE
    smallest_side = [a, b].min

    # FIND LARGEST SIDE
    largest_side = [a, b].max

    counter = 0 # creates a counter

    # CUT SMALLEST SIDE HOW MANY TIMES IT'S POSSIBLE
    until largest_side < smallest_side do
      largest_side -= smallest_side
      counter += 1
    end

    # CUT THE REMAINING SIDES
    until smallest_side == 1 do
      smallest_side -= largest_side
      counter += 1
    end


    counter = counter + largest_side # COUNT THE FINAL REMAINING CUTS, WHICH ARE THE SAME SIZE AS "largest_side"

    # OUTPUT
    p "Input : #{a} x #{b}"
    p "Output : #{counter}"

  end
end

test = Algorithms_Level2.new
test.paper_cut(13, 29)