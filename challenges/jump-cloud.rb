#WIP: needs a fix

def jumpCloud(c)
  numberOfJumps = 0
  progress = 0
  index = 0
  loop do
    if index >= (c.length - 1)
      break
    else
      if c[index + 2] == 0
        index += 2
      else
        index += 1
      end
      numberOfJumps += 1
    end
  end

  puts numberOfJumps
end

c = [0,0,1,0,0,1,0]

jumpCloud(c)
