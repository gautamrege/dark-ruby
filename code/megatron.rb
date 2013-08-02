module Megatron
  def power
    p "Megatron's super strength"
  end

  def evil
    p 'Evil genius'
  end
end

class Me
  include Megatron

  def evil
    p "do good"
  end
end
