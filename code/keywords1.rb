class MyClass
  def def
    yield
  end
end

MyClass.new.def { p "wtf" }
