##Challenge: take two sorted list, combine them and sort them.
#input a = [1,3,5]
#input b = [1,2,4]
#expected result = [1,2,3,4,5,6]

#using ruby sort method
def mix(a,b)
  c = a + b
  c = c.sort
  return c
end

#using a non-eficient method: looping N times findind the minimum value of the remainder array. N = length of combined array
def mix2(a,b)
  c = a + b
  result = []
  i = 0

  while c.length >=1
    result[i]= c.min      #find the smaller element
    c = c - [c.min]       #remove smaller element
    i += 1
  end

  puts "It took #{i+1} iterations to find the result"

  return result
end

#using a comparison between lists element by element. It requires only one pass through the lists.
def mix3(a,b)
  i = 0
  j = 0
  k = 0
  result = []
  while k <= (a+b).length

    if a[i] == nil    #break out of the loop when last element of 'a' has been reached
      result[k] = b[j]
      break
    end

    if b[i] == nil    #break out of the loop when last element of 'b' has been reached
      result[k] = a[j]
      break
    end

    if a[i] < b[j]
      result[k] = a[i]
      i += 1
    else
      result[k] = b[j]
      j += 1
    end
    k += 1

  end

  return result
  
end

a = [1,3,5,7,10]
b = [2,4,6,8,11]

puts "Final result #{mix3(a,b)}"
