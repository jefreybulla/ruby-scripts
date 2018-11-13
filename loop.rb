p 'init'

arr = [1,2,3,4,5]
counter = 0

arr.each do |i|
  puts i
end

arr.each do
  arr[counter] = 100
  counter += 1
end
p arr


computers = {make:"apple",model:"macbook"}
computers.each do |key, value|
  puts "#{key} => #{value}"
end

10.times do
  puts 1
end
