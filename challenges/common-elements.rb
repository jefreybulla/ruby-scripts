#Given two distict arrays, find the common elements.

# O(A*B)
def findCommonElements(a,b)
  start = Time.now
  result = []
  a.each do |itemA|
    b.each do |itemB|
      if itemA == itemB
        result.push(itemA)
      end
    end
  end
  executionTime = Time.now - start
  return result, executionTime

end

def checkOnB(itemA,b)
  b.each do |itemB|
    if itemA == itemB
      return itemA
    end
  end
  return false
end

#stoping after a match is found
def findCommonElements2(a,b)
  start = Time.now
  result = []
  a.each do |itemA|
    if checkOnB(itemA,b)
      result.push(itemA)
    end
  end
  executionTime = Time.now - start
  return result, executionTime
end

#Method that using uses ruby method
def findCommonElements3(a,b)
  start = Time.now
  executionTime = Time.now - start
  return a & b, executionTime
end

a = [1,5,12,3,-15,52]
b = [3,1,6,5,57,13,17]

#puts findCommonElements(a,b)  #42 cycles 8us
#puts findCommonElements2(a,b)  #28 cycles  7us
puts findCommonElements3(a,b)   # 1us - Winning time!
