#rotateLeft method takes an array a and the number of rotations d.

z = [1,3,5]

r = ""
z.each do |e|
  r += "#{e.to_s} "
end

puts r

def rotateLeft(a,d)
  result = Array.new(a.length)
  a.each_with_index do |e,i|
    result[i-d] = e
  end
  return result
end

d = 3 #number of rotatons
a = [1,2,3,4,5]

puts rotateLeft(a,d).inspect
