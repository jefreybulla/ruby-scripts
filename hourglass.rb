#Given a 6x6 2D array, we define an hourglass in  to be a subset of values with indices falling in this pattern in 's graphical representation:
# a b c
#   d
# e f g
#Print the largest (maximum) hourglass sum found in array.

def hourglassSum(arr)
  subarray = Array.new(3)

  counter = 0
  sum = []
  for i in 0..3
    for j in 0..3
      sum[counter] = 0

      subarray[0] = arr[i][j..j+2]
      subarray[0].each do |item|
        sum[counter] += item
      end

      subarray[1] = arr[i+1][j..j+2]
      sum[counter] += subarray[1][1]

      subarray[2] = arr[i+2][j..j+2]
      subarray[2].each do |item|
        sum[counter] += item
      end
      puts "----------------"
      puts subarray.inspect
      puts "Sum: #{sum[counter]}"
      counter += 1
    end
  end
  return sum.max

end


arr = Array.new(6)

arr[0] = [-9,-9,-9,1,1,1]
arr[1] = [0,-9,0,4,3,2]
arr[2] = [-9,-9,-9,1,2,3]
arr[3] = [0,0,8,6,6,0]
arr[4] = [0,0,0,-2,0,0]
arr[5] = [0,0,1,2,4,0]

puts hourglassSum(arr)
