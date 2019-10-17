text = "Check how often characters are repeated on this string"
text.downcase!
freqs = {}          #create empty hash
freqs.default = 0   #set the default of all values to 0
puts freqs
puts "--------"

text.each_char do |char|
  freqs[char] += 1
end

puts freqs

puts "--------"

("a".."z").each do |x|
  puts x + " => #{freqs[x]}"
end
