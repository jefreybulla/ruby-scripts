puts 'init'
puts '------------'

arr = [10,20,30,40,50]
counter = 0

arr.each do |i|           #the iterating variable (i) is called the block parameter
  puts "Value: #{i}"
end

arr.each do
  arr[counter] = 100
  counter += 1
end
puts arr

#loop over hashes
computers = {make:"apple",model:"macbook"}
computers.each do |key, value|
  puts "#{key} => #{value}"
end
#short version
computers.each {|key, value| puts "#{key} => #{value}"}

puts "--------------"

#iterate over the characters of a string
s = "Test"
s.each_char do |i|
  puts i
end

puts "--------------"

10.times do
  puts 1
end

while x >= 1
  puts "in loop"
  x = x - 1
end

var = 0
until var > 5 do
  puts var
  var += 1
end

a = 2
loop do
  puts a
  a += 3
  break if a > 8
end

for i in 2..4  #Two dots(..) include last elment of range
  puts i #output: 2 3 4
end

for i in 2...4 #three dots(...) does NOT include last element of range
  puts i #output: 2 3
end

arr = [10,20,30]
for i in arr
  puts "Value: #{i}"
end
