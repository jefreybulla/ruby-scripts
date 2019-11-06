##Classes in Ruby####

class Car
  #initialize method initialize the class variables  for a new object.
  #known as the constructor in other programming languages
  #instance variables (starts with @) have object scope. They relate to one specific object. They are accesible inside all the methods for the object.
  def initialize(brand)
    @brand = brand
  end

  #instance methods (methods within a class) add behavior to objects
  def makeNoise
    puts "RRRRR"
  end

  #instance method to allow access to instance variables
  #Methods that return instance variables are call getter methods
  def brand
    return @brand
  end

  #A setter method is used to modifed instance variables.
  #Is common practice that getter and setter method use the same name
  def brand=(brand)
    @brand = brand
  end

end



#create objects of the class Car
#an object is also called instances of a class.
c1 = Car.new("bmw")
c2 = Car.new("tesla")

c1.makeNoise
puts c1.brand

puts "--------------"
c1.brand = "ford"
puts c1.brand

puts "------using attr_accesor--------"
#Ruby has a helper to create the geter and setter methods: attr_accessor :name_of_variable
#attr_reader and attr_writes are also available to add getter or setter methods separately.
class Person
  attr_accessor :name, :age

  def initialize(name,age)
    @name = name
    @age = age
  end
  #to_s method helps returning useful info about the objects when called.
  def to_s
    return "#{@name} is #{@age} years old"
  end
end

p1 = Person.new("Mike",25)

puts "Name: #{p1.name}, age: #{p1.age}"
p1.name = "Michael"
p1.age = 26
puts "Name: #{p1.name}, age: #{p1.age}"

puts p1

puts "------------"

#Access other methods of the class.
class Machine

  def turn_on
    boot_cpu
    boot_os
  end

  def boot_cpu
    puts "booting CPU"
  end

  def boot_os
    puts "booting OS"
  end

end

m1 = Machine.new
m1.turn_on

#class method are methods that can used without creating instances
puts "----class methods--------"
class Noise
  def self.cat
    puts "Meow"
  end
end

Noise.cat

#class variables are accesible to every object of the class. A class variable belongs to the class, not to the object.
puts "----class variables-----"

class Table
  @@counter = 0
  def initialize
    @@counter += 1
  end
  #you can use a class variable to keep track of the number of objects created.
  def self.get_counter
    return @@counter
  end
end

t1 = Table.new
t2 = Table.new
t2 = Table.new

puts "counter: #{Table.get_counter}"

#class constants
puts "----class constants-----"
class Calculator
  PI = 3.14
end

puts Calculator::PI
