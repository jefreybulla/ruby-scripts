#Solve the equation for 0< a, b, c, d < 100
# a^3 + b^3 = c^3 + d^3

#Method that iterates over the four variables
#runinng time is O(n^4)
def solve(n)
  result = []
  start = Time.now
  for a in 0..n
    for b in 0..n
      for c in 0..n
        for d in 0..n
          if (a**3 + b**3) == (c**3 + d**3)
            result.push([a,b,c,d])
            puts "#{a} #{b} #{c} #{d}"
          end
        end
      end
    end
  end
  puts "number of solutions #{result.length}"
  runTime = Time.now - start
  return runTime
end

def solve2(n)
  result = []
  start = Time.now
  for a in 0..n
    for b in 0..n
      for c in 0..n
        for d in 0..n
          if a**3 + b**3 == c**3 + d**3
            result.push([a,b,c,d])
            puts "#{a} #{b} #{c} #{d}"
            break
          end
        end
      end
    end
  end
  puts "number of solutions #{result.length}"
  runTime = Time.now - start
  return runTime
end

def isInteger(number)
  fn = number.floor
  if number - fn == 0
    return true
  else
    return false
  end
end

#Method that solves for d = cbrt(a^3+b^3-c^3)
#runinng time is O(n^3)
def solve3(n)
  result = []
  start = Time.now
  for a in 0..n
    for b in 0..n
      for c in 0..n
        number = Math.cbrt(a**3 + b**3 - c**3)
        if number >= 0 && number <= n && isInteger(number)
          result.push([a,b,c,number.floor])
          puts "#{a} #{b} #{c} #{number.floor}"
        end
      end
    end
  end
  puts "number of solutions #{result.length}"
  runTime = Time.now - start
  return runTime
end

n = 100
#puts "Runtime #{solve(n)}"    #~43s
#puts "Runtime #{solve2(n)}"   #~39s
puts "Runtime #{solve3(n)}"    #~1s winning time!
