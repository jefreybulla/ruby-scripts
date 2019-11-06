#Animal is a super class. Dog and Cat are subclasses.
#Subclases inherite methods from superclasses.
class Animal
  def initialize(name, color)
    @name = name
    @color = color
  end

  def speak
    puts "Hi there"
  end
end

class Dog < Animal
end

d1 = Dog.new("Scout","brown")
d1.speak

#Method overriding is when the subclass has a method with the same name
class Cat < Animal
  def speak
    puts "Meow"
  end
end

c1 = Cat.new("Agata","black")
c1.speak    #"Meow"
