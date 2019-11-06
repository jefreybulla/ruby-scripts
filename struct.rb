#Definie points in a 2D space using x and y coordinates
Point = Struct.new(:x,:y)

#Point is a Struct, having two attribute accessors: x and y.
#Struct automatically creates its initialize method for the defined accessors, so now we can use Points just like a class, instantiating different objects from it.
#Struct is a built-in Ruby class and makes it shorter to define simple classes, accessors, and their initialize methods.

origin = Point.new(3,7)
destination = Point.new(5,9)

puts origin.y     #7

#OpenStruct (or OStruct) acts very similarly to Struct, except that it doesn't have a defined list of attributes.
require "ostruct"

person = OpenStruct.new
person.name = "John"
person.age = 42
person.salary = 250

puts person.name  # John
