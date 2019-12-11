#Everyone's in line for the Wonderland rollercoaster ride. There are a number of people queued up, and each person wears a sticker indicating their initial position in the queue. Initial positions increment by  from  at the front of the line to  at the back.
#Any person in the queue can bribe the person directly in front of them to swap positions. If two people swap positions, they still wear the same sticker denoting their original places in line. One person can bribe at most two others. For example, if n=8 and Person 5 bribes Person 4, the queue will look like this: 1,2,3,5,4,6,7,8.
#Calculate the minimum number of bribes that took place to get the queue into its current state.

#From: https://www.hackerrank.com/challenges/new-year-chaos/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

def calculateBribes(q)
  bribes = 0
  checkCounter = 0
  checkNumber = {}
  checkNumber.default = 0
  for i in 0..(q.length-2)
    if q[i] < q[i+1]
      #puts "in order"
    else
      #puts "not in oder"
      checkNumber[q[i]] += 1
      if checkNumber[q[i]] > 2
        return "Too caothic"
      end
      a = q[i] #5
      b = q[i+1]  #3
      q[i] = b
      q[i+1] = a
      bribes += 1
    end
  end
  return bribes

end

#finalQ = [1,2,4,3]  #1 bribe
#finalQ = [2,1,4,3]  #2 bribes
#finalQ = [1,2,5,3,4]  #2 bribes
finalQ = [2,1,5,3,4]  #3 bribes
#finalQ = [2,1,6,3,4,5]  #Too chaotic

puts calculateBribes(finalQ)
