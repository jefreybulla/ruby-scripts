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

s = "abc"

puts getPermutations(s)
