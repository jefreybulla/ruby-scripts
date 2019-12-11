a =3
if a > 2
  puts "a is greater than two"
else
  puts "a is not greater than two"
end

unless a > 2
  puts "a is not greater than two"
end

puts "3" if a == 3

puts "a is smaller than five" unless a > 5

msg = a == 3 ? "a is three":"a is not three"
puts msg
