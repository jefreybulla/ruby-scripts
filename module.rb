###Modules for grouping common methods together###

module Flyable
  def fly
    puts "I'm flying!"
  end
end

class Vehicle
end

class Car < Vehicle
end

#Addin a module to a class is referred as mix in
#class can mix in multiple modules
class Jet < Vehicle
  include Flyable
end

class Plane < Vehicle
  include Flyable
end


j = Jet.new
j.fly

c = Car.new
#c.fly      #produce error

#If it's an "is-a" relationship, choose class inheritance. If it's a "has-a" relationship, choose modules.
#Example: a plane "is a" vehicle; a plane "has an" ability to fly.



###Modules for namespacing###
#In this context, namespacing means organizing similar classes in a module.

module Mammal
  class Dog
    def speak
      puts "Woof!"
    end
  end

  class Cat
    def speak
      puts "Meow"
    end
  end
end

d = Mammal::Dog.new
d.speak
