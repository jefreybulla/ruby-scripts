puts 'init'
puts '------------'

arr = [10,20,30,40,50]
counter = 0

arr.each do |i|
  puts "Value: #{i}"
end

arr.each do
  arr[counter] = 100
  counter += 1
end
puts arr


computers = {make:"apple",model:"macbook"}
computers.each do |key, value|
  puts "#{key} => #{value}"
end

10.times do
  puts 1
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
