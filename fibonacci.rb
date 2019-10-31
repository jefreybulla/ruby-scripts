p 'jef script'

$counter = 0  # The '$ symbol declares a global variable.

def fibonacci(number)
  $counter += 1
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(7)
puts $counter
