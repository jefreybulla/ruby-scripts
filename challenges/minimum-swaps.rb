#You are given an unordered array consisting of consecutive integers  [1, 2, 3, ..., n] without any duplicates. You are allowed to swap any two elements.
#You need to find the minimum number of swaps required to sort the array in ascending order.

def swap(arr)
  for i in 0..arr.length-1
    if arr[i] == i+1
      #puts "correct position"
    else
      a = arr[i]
      b = arr[arr[i]-1]
      arr[i] = b
      arr[a-1] = a
      puts arr.inspect
      return arr
    end
  end
  return "correct position"
end

def numberOfSwaps(arr)
  counter = 1
  loop do
    arr = swap(arr)
    if arr == "correct position"
      return counter-1
    end
    counter +=1
  end
end

#arr = [4,3,1,2]   #3 swaps
#arr = [2,3,4,1,5] #3 swaps
#arr = [1,3,5,2,4,6,7] #3 swaps
arr =  [7,1,3,2,4,5,6]  #5 swaps

puts "input: #{arr}"
puts numberOfSwaps(arr)
