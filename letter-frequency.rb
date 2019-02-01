text = "Check how often characters are repeated on this string"
text.downcase!
freqs = {}
freqs.default = 0
puts freqs

text.each_char do |char|
  freqs[char] += 1
end

puts freqs

("a".."z").each do |x|
  puts x + " => #{freqs[x]}"
end
