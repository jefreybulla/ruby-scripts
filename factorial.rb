#Use recursion to build a factorial method
# 4! =  4*3*2*1 = 24

def factorial(n)
  if n <= 1
    n
  else
    n * factorial(n-1)
  end
end

n = 5
puts factorial(n)
