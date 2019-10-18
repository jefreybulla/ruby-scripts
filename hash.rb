ages = {"David"=> 28, "Amy"=> 19, "Rob"=> 56}
puts ages["Rob"]

#using symbols instead for strings as keys. Symbols are immutable
user = {:name =>"Dave", :age=>28, :gender=> "male"}
puts user[:gender]

#In other programming languages hashes are called associative arrays or dictionaries.

#shorter way to write hashes:
user2 = {name:"Miranda", age:29, gender:"female"}
puts user2[:name]
puts user2

puts user2.key("female") #returns the key name
puts user2.keys #returns all keys
puts user2.values #returns all values
temp = user2.invert #invert keys and values
puts temp
puts temp["female"]
