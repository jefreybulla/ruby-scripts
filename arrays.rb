a = [1,2,3,4];

#Negative index
a[-1]  # output 4
a[-2]  # output 3

#create array if a specific size
myArray = Array.new(3)    #[nil,nil,nil]
puts myArray.inspect
#create array if a specific size and default values
myArray2 = Array.new(4,0)  #[0,0,0,0]
puts myArray2.inspect

#adding element to array
a << 5            #[1,2,3,4,5]
a.push(6)         #[1,2,3,4,5,6]
a.insert(1,"one")   #[1,"one",2,3,4,5,6]

#remove elements from array
a.pop             #[1,"one",2,3,4,5]
a.delete_at(1)    #[1,2,3,4,5]

print a           #puts outputs one iteam per line, print outputs all element in one line
print a[1..3]     #output: [2,3,4]

#array concatanation
b = [6,7]
print a + b       #[1,2,3,4,5,6,7]

#concatanate and leave only uniques.
c = [6,8]
print = b - c       #[7,8]

#duplicating elements
print = b * 2       #[6,7,6,7]

#finding duplicates
print b & c         #[6]

#concatanate and removing duplicates.
print b | c       #p[6,7,8]

#Reverse elements of array
print a.reverse   #[5,4,3,2,1]
print a.reverse!  #modifies a
print a.reverse!  #back to original

puts "\n"
#sort elements of array
d = [9,8,9,6]
dsorted = d.sort            #[6,8,9,9]
puts dsorted.inspect

#remove duplicates in elements of the array
d.uniq            #[9,8,6]

#finding min and max element in array
d.min             #6
d.max             #9

#size of array
d.size            #4
d.length          #4

#finding elements with an exact match
sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
puts sharks.include? "Tiger"   #true
puts sharks.include? "Sharknado"   #false

#find first element with a partial match
result = sharks.find {|item| item.include?("t")}
puts result   #Great White

#find all elements wuth a partial match
results = sharks.select {|item| item.include?("i")}
puts results.inspect  #["Great White", "Tiger"]

puts "-join-"
#convert array to string
result = sharks.join(" ")
puts result

puts "---map and join to create outputs---"
#using map and join to transform an array of data into output
options = sharks.map {|shark| "<option>#{shark}</option>"}
output = options.join("\n")
puts output

puts "---sort_by---"
#sort an aaray of hashes with sort_by
sharks = [
  {name: "Hammerhead"},
  {name: "Great white"},
  {name: "Angel"}
]
sorted_sharks = sharks.sort_by{|shark| shark[:name] }
puts sorted_sharks.inspect
