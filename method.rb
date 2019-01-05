def product (a,b=2)
  puts a*b
end
x= 4
y= 5
product(x,y)
#product(x)  #use first parameter and take second paremeter with the default value

def manyArguments(*p) #any number of arguments
  puts p
  puts p[1]
end

manyArguments(2,100,"hola")

def temp
  return "my message"
end

t = temp
puts t

def squares (a,b)
  return a*a, b*b  #return multiple values
end

puts squares(2,3)

def sq(x)
  x*x
end

sq(2).times{
  puts "Hi"
}

def change
  $global = 99  #dollar sign makes a variable a global variable.
end
change
puts $global

#Recursiveness
def factorial(n)
  if n <= 1   # this is the base case. Without it, loop is infinate. 
    1
  else
    n*factorial(n-1)
  end
end
puts 'factorial is: ' + factorial(6).to_s
