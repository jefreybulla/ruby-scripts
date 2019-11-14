#By default, all class methods (except initialize) are public, meaning that they are accessible from both inside and outside of the class.

class Player
  def score
    move
    puts "scoring"
  end

  #all methods that come after 'private' are only accesible inside de the class
  private
  def move
    puts "moving"
  end
end

p = Player.new

#p.move       # Get error
p.score

#Access levels
#public = inside and outside the class (default).
#protected = inside the class, by the self or a public method.
#private = inside the class, only by a public method (no self).
