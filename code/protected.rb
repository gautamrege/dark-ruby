class Base
  def test(obj)
    obj.bar
  end

  protected
    def bar
      puts "#{self}"
    end
end

a = Base.new; b = Base.new

a.test(a)
a.test(b)
