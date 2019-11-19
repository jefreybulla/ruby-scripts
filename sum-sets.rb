# # Lets find sum sets!
# ======================
#
# Given
# - a target integer, `x`
# - a size integer, `size`
# - and a List of integers, `Z`
#
# Return all subsets of `Z` of size `size` where the sum is `x`
#
# ## Example
#
# Given
# - x = 12
# - size = 2,
# - Z = [ 2, 10, -1, 11, 4, 9, 0, 1, 13]
#
# You should return
# ```
# [
#   [2, 10], [-1, 13], [1, 11]
# ]


#Solution for size = 2

input = [ 2, 10, -1, 11, 4, 9, 0, 1, 13]
target = 12

result = []
resultIndex = 0

for i in 0..(input.length - 1)
  for j in i+1..(input.length - 1)
    #puts "We are checking #{input[i]}, #{input[j]}"
    if input[i] + input[j] == target
      result[resultIndex] = [input[i],input[j]]
      resultIndex += 1
    end
  end
end

puts result.inspect
