p "init"

def countdown(number)
  if number <= 0
    puts number
  else
    puts number
    number -= 1
    countdown(number)
  end
end

countdown(6)
