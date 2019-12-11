#Given two distict arrays, find the common elements.

# O(A*B)
def findCommonElements(a,b)
  result = []
  runCounter = 0
  a.each do |itemA|
    b.each do |itemB|
      runCounter += 1
      if itemA == itemB
        result.push(itemA)
      end
    end
  end
  puts "This loop ran #{runCounter} times"
  return result
end

def checkOnB(itemA,b)
  runCounter = 0
  b.each do |itemB|
    runCounter += 1
    puts "runCounter: #{runCounter}"
    if itemA == itemB
      return itemA
    end
  end
  return false
end

# faster than O(A*B) since it stops after a match is found
def findCommonElements2(a,b)
  result = []
  a.each do |itemA|
    if checkOnB(itemA,b)
      result.push(itemA)
    end
  end
  return result
end

#Method that using uses ruby method
def findCommonElements3(a,b)
  return a & b
end

a = [1,5,12,3,-15,52]
b = [3,1,6,5,57,13,17]

#puts findCommonElements(a,b)  #42 cycles
#puts findCommonElements2(a,b)  #28 cycles
puts findCommonElements3(a,b)
