#making all strings uppper case
arrayA = ["a","b","c"]
arrayB = arrayA.map {|string| string.upcase }

puts arrayB.inspect

#doubling all elements of an array

a = [1,2,3]
b = a.map {|number| number*2 }
puts b.inspect

#makeing all values of a hash upper case
h = {name: "pedro", lastname: "martinez"}
puts h.inspect
puts h[:name]


h2 = h.map {|key,value| value.upcase }
puts h2.inspect     #return an array, not a hash.

h3 = h.map {|key,value| [key, value.upcase] }.to_h
puts h3.inspect     #return a hash

#map with index
c = ["a","b","c"]
d = c.map.with_index {| char, index | [char, index ]}
puts d.inspect

#Map shorthand
e = ["11", "21", "5"].map(& :to_i)
puts e.inspect

f = ["orange", "apple", "banana"].map(& :class)
puts f.inspect
