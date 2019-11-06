#r read-only, starts at beginning of file (default mode).
#r+ read-write, starts at beginning of file.
#w write-only, truncates existing file to zero length or creates a new file for writing.
#w+ read-write, truncates existing file to zero length overwriting existing data or creates a new file for reading and writing.
#a write-only, appends to end of file if file exists, otherwise creates a new file for writing.
#a+ read-write, appends or reads from end of file if file exists, otherwise creates a new file for reading and writing.

#create a file
file = File.new("test.txt","w+")
file.close

#open an existing file and writing
file = File.open("test.txt", "w+")
file.puts("some text")
file.close

#This shorter way makes sure the file closes at the end of the block.
File.open("test.txt", "w+") {
  |file| file.puts("some text 2")
}

#The puts and write methods can be used for writing content to a file.
#The difference between the two is that puts adds a line break to the end of strings, while write does not.
file = File.open("test.txt","w+")
file.puts("more text")
file.puts("more text 2")
file.write("more text 3")
file.write("more text 4")
file.puts("more text 5")

#The size method returns the size of the file in bytes
puts "file size: #{file.size}"

file.close

#read content of file
puts File.read("test.txt")

#The readlines method reads the entire file based on individual lines and returns those lines in an array.
puts "-readlines method-"
c = File.readlines("test.txt")
puts "Array c: #{c}"
#you can also use it to iterate over the lines with a block of code.
File.readlines("test.txt").each {
  |line| puts " --- #{line}"
}


#The zero? method returns true if the named file exists and has a zero size (is empty).
puts "is file empty?: #{File.zero?("test.txt")}"    #false

#check whether the file is writable, readable or executable
puts File.readable?("test.txt") # true
puts File.writable?("test.txt")   # true
puts File.executable?("test.txt") # false

#Delete file
File.delete("test.txt")

#check if file exists
puts "File exists?: #{File.file?("text.txt") }"    #false
#only open if file exists
if File.file?("text.txt")
  file = File.open("test.txt")
  file.close
end
