class Base
  private
    def foo
      puts "inside (private) Base#foo"
    end
end

class Child < Base
  def bar
    foo  # calling private method?
  end
end

Child.new.bar

