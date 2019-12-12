#Find all permutation for a string of three characters

##Algorigthm:
#1) Fix first character
#2) Use first char combined with the remaining chars and their reverse version
#3) Rotate the chars once to the left
#3) Do it two more times

def rotateChar(s)
  #convert string to array
  arr = []
  s.each_char do |char|
    arr.push(char)
  end
  #Rotate
  result = Array.new(arr.length)
  arr.each_with_index do |element,index|
    result[index-1] = element
  end
  return result.join
end

def factorial(n)
  if n <= 1
    n
  else
    n * factorial(n-1)
  end
end

#This method works for input of three characters
def getPermutations(s)
  result = []
  for i in 0..2
    substring = s[1..2]
    result.push(s[0] + substring)
    result.push(s[0] + substring.reverse)
    s = rotateChar(s)
  end

  return result
end

#The following method work with recursion to solve to inputs of three characters
def getPermutations2(s,perm=[])
  substring = s[1..2]
  perm.push(s[0] + substring)
  perm.push(s[0] + substring.reverse)
  if perm.length >= factorial(s.length)
    return perm
  else
    s = rotateChar(s)
    getPermutations2(s,perm)
  end
end

#The following method find all the permutations for an input if four characters
def getPermutations3(s,perm=[])
  subresult = getPermutations2(s[1..3])
  subresult.each do |item|
    perm.push(item.insert(0,s[0]))
  end
  if perm.length >= factorial(s.length)
    return perm
  else
    s = rotateChar(s)
    getPermutations3(s,perm)
  end
end

s = "abcd"

#puts rotateChar(s)
puts getPermutations3(s)
