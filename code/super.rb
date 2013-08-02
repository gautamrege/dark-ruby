class Base
  def foo
    p "Base: awesomness!!"
  end
end

class Derived < Base
  def foo(a, *b)
    super()
    p a, b
  end  
end

Derived.new.foo(1, 2)

