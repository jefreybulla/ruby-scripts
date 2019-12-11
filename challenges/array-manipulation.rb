

def arrayManipulation(n,queries)
  arr = Array.new(n,0)

  for j in 0..queries.length-1
    for i in queries[j][0]-1..queries[j][1]-1
      arr[i] += queries[j][2]
      puts arr.inspect
    end
  end

  puts arr.inspect
  return arr.max

end

def arrayManipulation2(n,queries)
  arr = Array.new(n,0)
  for j in 0..queries.length-1
    for i in queries[j][0]-1..queries[j][1]-1
      arr[i] += queries[j][2]
    end
  end

  #puts arr.inspect
  return arr.max

end

n = 5
queries = [[1,2,100],[2,5,100]]

puts arrayManipulation(n,queries)
