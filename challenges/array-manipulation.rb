#Starting with a 1-indexed array of zeros and a list of operations, for each operation add a value to each of the array element between two given indices, inclusive.
#Once all operations have been performed, return the maximum value in your array.
#Source: https://www.hackerrank.com/challenges/crush/problem

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
