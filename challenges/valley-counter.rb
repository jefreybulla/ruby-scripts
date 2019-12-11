
#For every step a hiker noted if it was an uphill, U, or a downhill, D step.
#A valley is a sequence of consecutive steps below sea level, starting with a step down from sea level and ending with a step up to sea level.
#Create a method to count the number of valleys traversed by the hiker. 

def valleyCounter(n,s)
  currentAltitude = 0
  lastAltitude = 0
  index = 0
  numberOfValleys = 0
  s.each_char do |char|
    if char == "U"
      currentAltitude += 1
      lastAltitude = currentAltitude - 1
    else
      currentAltitude -= 1
      lastAltitude = currentAltitude + 1
    end
    if currentAltitude == 0 && lastAltitude < 0
      numberOfValleys += 1
    end
  end
  puts numberOfValleys
end

n = 8
s ="UDDDUDUU"

valleyCounter(n,s)
