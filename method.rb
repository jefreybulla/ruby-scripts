###Ruby Methods###

#a, b are the parameters .x,y are the arguments.
def product (a,b=2)
  puts a*b
end
x= 4
y= 5
product(x,y)
product(x)  #send one argument and use the default value for the second one.

puts "-------------"

#Method that aceppts any number of parameters. p is an array of any size.
def acceptMany(*p)
  puts p
  puts p[1]
end

#Method with two mandatory parameters and one optional parameter
def optionalParameters(a,b,*c)
  #some code
end

acceptMany(2,100,"hola")

puts "-------------"

#Method that returns a value. If return statement is not present, a method always return the last line of code.
def temp
  return "my message"
end

t = temp
puts t

#Method that returns multile values
def squares (a,b)
  return a*a, b*b  #return multiple values
end
puts squares(2,3)

def sq(x)
  x*x
end

sq(2).times do
  puts "Hi"
end

#Ruby has four types of variable scope: local, global, instance and class.
#local variable are available only in the context where they were called (a method or loop)
#Use of global variables is strongly discouraged
#dollar sign makes a variable a global variable.
def change
  $global = 99
end
change
puts $global

#Recursiveness
def factorial(n)
  if n <= 1   # this is the base case. Without it, loop is infinite.
    return 1
  else
    return n*factorial(n-1)
  end
end
puts 'factorial is: ' + factorial(4).to_s

=begin
def greet(name="")
  if name == ""
    puts "Greetings"
  else
    puts "Welcome, #{name}"
  end
end

greet(gets.chomp)     #request user input via the terminal
=end
