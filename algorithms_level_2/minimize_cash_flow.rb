# https://www.geeksforgeeks.org/minimize-cash-flow-among-given-set-friends-borrowed-money/

# LIMITATION -> WORKS ONLY FOR 3 PEOPLE
class Algorithms_Level2
  def minimize_cash_flow(graph)


    # HOW TO DO IT USING A LOOP?
    # Compute the net amount for every person. The net amount for person ‘i’ can be computed by subtracting sum of all debts from sum of all credits.
    net_amount_0 = - graph[0].sum + graph[1][0] + graph[2][0]
    net_amount_1 = - graph[1].sum + graph[0][1] + graph[2][1]
    net_amount_2 = - graph[2].sum + graph[0][2] + graph[1][2]



    # Find the two persons that are maximum creditor and maximum debtor.
    net_amounts = [net_amount_0,net_amount_1,net_amount_2]

    exchanged_money = Array.new(net_amounts.length,0)

    until exchanged_money == net_amounts do
      minInd = 0 # Index of maximum debtor
      (1..graph.length - 1).each do |i|
        minInd = i if net_amounts[i] < net_amounts[minInd]
      end

      maxInd = 0 # Index of maximum creditor
      (1..graph.length - 1).each do |i|
        maxInd = i if net_amounts[i] > net_amounts[maxInd]
      end


      # Let the maximum amount to be credited from maximum creditor be maxCredit and maximum amount to be debited from maximum debtor be maxDebit.
      maxDebit = net_amounts[minInd]
      maxCredit = net_amounts[maxInd]


      # Let the maximum debtor be pd and maximum creditor be pc.
      pd = minInd
      pc = maxInd


      # Find the minimum of maxDebit and maxCredit. Let minimum of two be x.
      x = [maxDebit.abs,maxCredit.abs].min




      # Debit ‘x’ from pd and credit this amount to pc
      exchanged_money[pd] = exchanged_money[pd] - x
      exchanged_money[pc] = exchanged_money[pc] + x


      # If x is equal to maxCredit, then remove pc from set of persons and recur for remaining (n-1) persons.
      # If x is equal to maxDebit, then remove pd from set of persons and recur for remaining (n-1) persons.
      #net_amounts.delete_at(pc) if x == maxCredit
      #net_amounts.delete_at(pd) if x == maxDebit



    end

    p exchanged_money
    p net_amounts







  end
end



# graph[i][j] indicates the amount
# that person i needs to pay person j
graph = [[0, 1000, 2000], [0, 0, 5000], [0, 0, 0]]

test = Algorithms_Level2.new
test.minimize_cash_flow(graph)
