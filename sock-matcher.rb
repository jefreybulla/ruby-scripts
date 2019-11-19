#Method must return an integer representing the number of matching pairs of socks that are available.
# Parameter(s):
# n: the number of socks in the pile
# ar: the colors of each sock


def match(n,ar)
  #Hash will store the occurrences of each sock
  myHash = {}
  myHash.default = 0
  ar.each do |e|
    myHash[e] += 1
  end
  puts "Ocurrences: #{myHash}"

  #Check if we have pair of socks by dividing each element of the hash by 2
  pairs = 0
  myHash.each do |key, value|
    pairs += value/2
  end
  puts pairs
end


n = 9
ar= [10,20,20,10,10,30,50,10,20]
match(n,ar)
