ages = {"David"=> 28, "Amy"=> 19, "Rob"=> 56}
puts ages["Rob"]

user = {:name =>"Dave", :age=>28, :gender=> "male"}  #using symbols instead for strings as keys
puts user[:gender]

user2 = {name:"Miranda", age:29, gender:"female"}  #shorter way to write hashes
puts user2[:name]
p user2
p user2.key("female") #returns the key name
p user2.keys #returns all keys
p user2.values #returns all values
temp = user2.invert #invert keys and values
p temp
