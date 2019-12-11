#Given an string s that is repeated to form a new string of size n, find the number of letters a .
#Sample case: s = "aba" n = 5. New string "abaab". Result: 3

def countA(string)
  counter = 0
  string.each_char do |char|
    if char == "a"
      counter +=1
    end
  end
  return counter
end

def calculate(s,n)
  puts "s: #{s}, n: #{n}"
  if n <  s.length
    return countA(s[0..n-1])
  elsif n % s.length == 0
    stimes = n/(s.length)
    return stimes * countA(s)
  else
    stimes = n/(s.length)
    partialResult = stimes * countA(s)
    reminder = n % s.length
    reminderString = s[0..reminder-1]
    reminderResult = countA(reminderString)
    return partialResult + reminderResult
  end
end

s = "aba"
n = 8
puts calculate(s,n)
