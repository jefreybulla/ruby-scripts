#success array has elements with one increment [1,2,3] or [1,2,3,4,5,6] or [1,2,3,4,5,6,7,8,9,10]

def calculateBribes(q)
  bribes = 0
  checkCounter = 0
  checkNumber = {}
  checkNumber.default = 0
  for i in 0..(q.length-2)
    if q[i] < q[i+1]
      puts "in order"
    else
      checkNumber[q[i]] += 1
      if checkNumber[q[i]] > 2
        return "Too caothic"
      end
      puts "needs calculation"
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
#finalQ = [2,1,6,3,4,5]  #3 bribes
#1 2 3 5 4



puts calculateBribes(finalQ)
