class Animal
  def speak
    puts "Hi"
  end
end

#super method allows us to extend a method of the superclass 
class Dog < Animal
  def speak
    super
    puts "Wof"
  end
end

d = Dog.new
d.speak # Hi \n Wof
