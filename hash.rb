ages = {"David"=> 28, "Amy"=> 19, "Rob"=> 56}
puts ages["Rob"]

users = {:name =>"Dave", :age=>28, :gender=> "male"}  #using symbols instead for strings as keys
puts users[:gender]

users2 = {name:"Miranda", age:29, gender:"female"}  #shorter way to write hashes
puts users2[:name]
p users2
p users2.key("female") #returns the key name
p users2.keys #returns all keys
p users2.values #returns all values
temp = users2.invert #invert keys and values
p temp
