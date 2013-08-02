module Spiderman
  def fly
    p 'Up up and away Spidey'
    super
  end
end

module Ironman
  def fly
    p "Fire away Pepper"
    super
  end
end

class Hanuman
  include Spiderman
  include Ironman
end

Hanuman.new.fly


