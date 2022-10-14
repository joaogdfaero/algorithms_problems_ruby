# https://www.geeksforgeeks.org/job-sequencing-problem/

def job_sequencing(input)
  # LÓGICA PEGA SEMPRE O QUE DÁ MAIS LUCRO E TEM A MENOR DEADLINE


  # GET THE JOBS IN A ARRAY
  jobs = []
  (0..input.length-1).each do |i|
    jobs.append(input[i][0])
  end

  # GET THE DEADLINES IN A ARRAY
  deadlines = []
  (0..input.length-1).each do |i|
    deadlines.append(input[i][1])
  end

  # GET THE PROFITS IN A ARRAY
  profits = []
  (0..input.length-1).each do |i|
    profits.append(input[i][2])
  end


  sequence = [] # final sequence that will be displayed to the user
  count = 0 # how many times works was done

  until count == deadlines.max do
    p "O maior lucro é o #{profits.max} do job #{jobs[profits.index(profits.max)]}"

    p "A menor deadline é a #{deadlines.min} do job #{jobs[deadlines.index(deadlines.min)]}"

    maior_lucro = jobs[profits.index(profits.max)]
    menor_deadline = jobs[deadlines.index(deadlines.min)]

    if maior_lucro == menor_deadline
      sequence.append(jobs[profits.index(profits.max)])
      count = count + 1
    end

    # PEGA O MAIOR LUCRO
    # PEGA A MENOR DEADLINE
    # SE FOREM O MESMO JOB, FAZ ESSE JOB
    # SE FOREM JOBS DIFERENTES, IGNORA ESSE COM A DEADLINE MAIOR E FAZ O PRÓXIMO COM DEADLINE MENOR E MAIOR LUCRO

    p "A sequência ideal é #{sequence}"

  end


end


# JOB, DEADLINE, PROFIT
input = [["a",4,20],["b",1,40],["c",1,10],["d",1,30]]
job_sequencing(input)