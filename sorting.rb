#sorting numbers
a = [3,5,2,20,74,10]
b = a.sort
puts b
puts '-----'

#sorting strings
c = ["Tesla", "Microsoft", "Google"]
puts c.sort
puts '-----'

#reverse sorting
d = c.sort { |a,b| b <=> a }
puts d
puts '-----'

#sort by length of string
e = c.sort_by { |word| word.length }
puts e
puts '-----'

#reverse sort by length of string
f = c.sort_by { |word| -word.length }
puts f
puts '-----'

#sort a Hash
myHash = {'my post1': 15, 'my post2': 20, 'my post3': 5}
puts myHash.sort_by(&:last)
puts '-----'

myHash2 = {post1: 15, post2: 20, post3: 5}
puts myHash2.sort_by(&:last)
puts '-----'

#sort multidimensional array
array = [[15,'B'],[20,'A'],[5,'C']]
puts array.sort
