p 'init'

x = [1,2,3,4,5]
counter = 0
x.each do
  x[counter] = 100
  counter += 1
end

p x
