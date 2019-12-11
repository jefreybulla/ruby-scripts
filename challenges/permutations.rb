def findPermutations(charArray)
  permutation = []
  leftover = charArray[1..2]
  #puts leftover

  puts '--------------'
  permutation[0] = [charArray[0],leftover[0],leftover[1]]
  puts permutation[0]
  puts '--------------'

  permutation[2] = permutation[0].rotate
  puts permutation[2]
  puts '--------------'

  permutation[3] = permutation[2].rotate
  puts permutation[3]
  puts '--------------'

  permutation[1] = [charArray[0],leftover.reverse[0],leftover.reverse[1]]
  puts permutation[1]
  puts '--------------'

  permutation[4] = permutation[1].rotate
  puts permutation[4]
  puts '--------------'

  permutation[5] = permutation[4].rotate
  puts permutation[5]
  puts '--------------'

end

charArray = ["a","b","c"]

findPermutations(charArray)
