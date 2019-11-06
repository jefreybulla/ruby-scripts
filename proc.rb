greet = Proc.new do |x|
  puts "Hello, #{x}"
end

greet.call "Jef"

#Procs basically take blocks of code and embed them in an object, allowing them to be reused and passed around.
greet = Proc.new do |x|
  puts "Welcome #{x}"
end

goodbye = Proc.new do |x|
  puts "Goodbye #{x}"
end

def say(arr, proc)
  arr.each { |x| proc.call x}
end

people = ["David", "Amy", "John"]
say(people, greet)
say(people, goodbye)


#Calculate execution time. Procs can be used as arguments in a method because they are objects.
puts "--Calculate execution time--"
def calc(proc)
  start = Time.now
  proc.call
  dur = Time.now - start
end

someProc = Proc.new do
  num = 0
  1000000.times do
    num = num + 1
  end
end

puts calc(someProc)

#A lambda is an instance of the Proc class.
puts "--Lamdas--"
#sintax to create a lamda. In other programming languages, a lambda is commonly referred to as an anonymous function.
talk = lambda {puts "Hi"}
#or
talk = ->() {puts "Hi"}

#Procs vs Lamdas
#when a lambda expects an argument, you need to pass those arguments or an Error will occur.
talk = lambda { |x| puts "Hello #{x}" }
talk_proc = Proc.new { |x| puts "Hello #{x}" }

talk.call "David"
# outputs "Hello David"
talk_proc.call "Amy"
# outputs "Hello Amy"

talk_proc.call
# ouputs Hello
#talk.call      # outputs "Error: wrong number of arguments (given 0, expected 1)"
