#Reduce helps reducing the values of an array to one value
a = [1,2,3,4]
#Initialize the result to 0 and then add the current value to the result in the block.
output = a.reduce(0) {|result,current| result += current }
puts output

#If you plan to initialize the result to 0, you can omit the argument and just pass the block.
#This will automatically set the result to the first value in the array.

output = a.reduce {|result,current| result += current }
puts output

#using a binary method by passing its name as a symbol
output  = a.reduce(:+)
puts output
output  = a.reduce(:*)  #24
puts output
