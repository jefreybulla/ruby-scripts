def product (a,b=2)
  puts a*b
end
x= 4
y= 5
product(x,y)

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

sq(4).times{
  puts "Hi"
}
