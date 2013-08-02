require './megatron'

class Base
  def power
    Megatron.instance_method(:power).bind(self).call
  end
end

Base.new.power
Base.new.evil
