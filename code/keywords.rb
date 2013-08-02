class MyClass
  def true
    false
  end

  def false
    true
  end
end

MyClass.new.bar
p 'seriously!' if MyClass.new.false
