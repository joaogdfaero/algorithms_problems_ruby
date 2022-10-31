# https://www.geeksforgeeks.org/minimize-cash-flow-among-given-set-friends-borrowed-money/


class Algorithms_Level2
  def minimize_cash_flow(graph)

    # Compute the net amount for every person. The net amount for person ‘i’ can be computed by subtracting sum of all debts from sum of all credits.
    p net_amount_1 = graph[0].sum - graph[1][1] + graph[2][1] # DOO THIS WITH A ITERATION LOOP



    # Find the two persons that are maximum creditor and maximum debtor. Let the maximum amount to be credited from maximum creditor be maxCredit and maximum amount to be debited from maximum debtor be maxDebit. Let the maximum debtor be Pd and maximum creditor be Pc.
    # Find the minimum of maxDebit and maxCredit. Let minimum of two be x. Debit ‘x’ from Pd and credit this amount to Pc
    # If x is equal to maxCredit, then remove Pc from set of persons and recur for remaining (n-1) persons.
    # If x is equal to maxDebit, then remove Pd from set of persons and recur for remaining (n-1) persons.

  end
end



# graph[i][j] indicates the amount
# that person i needs to pay person j
graph = [[0, 1000, 2000], [0, 0, 5000], [0, 0, 0]]

test = Algorithms_Level2.new
test.minimize_cash_flow(graph)
