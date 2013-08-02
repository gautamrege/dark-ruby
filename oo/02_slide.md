!SLIDE 
# Private methods
<div class='level beginner'/>
## We are the OO dudes!

!SLIDE bullets 
# Private methods inhertitance?
<div class='level beginner'/>

    @@@ruby
    class Base
      private
        def foo
          puts "inside foo"
        end
    end

    class Child < Base
      def bar
        foo  # Is this supposed to work??
      end
    end

!SLIDE 
# Private methods are inherited
# in Ruby
<div class='level beginner'/>

!SLIDE
# What is include?
<div class='level expert'/>

    @@@ruby
    class Base
      include Mongoid::Document
    end

<div class="highlight" style="top:433px; left:81px;" />

!SLIDE bullets incremental
# def include(\*args)
<div class='level expert'/>

* defined in class Module !
* private method !!
* instance method !!! 

!SLIDE bullets
# Classes in Ruby
<div class='level expert'/>

* Class inherits from Module
* include is invoked on Class instance

!SLIDE 
<div class='level beginner'/>
# And you thought it was keyword?

!SLIDE bullets incremental
# Speaking of keywords...
<div class='level beginner'/>

* Ruby has no keywords

!SLIDE
# Speaking of keywords...
<div class='level beginner'/>

    @@@ruby
    class MyClass
      def true
        false
      end

      def false
        true
      end
    end

    obj = MyClass.new
    p "seriously!!" if obj.false

!SLIDE bullets 
# Speaking of keywords...
<div class='level beginner'/>

* This will work only in classes
* Not directly in IRB
* However, other languages do not even allow this!

!SLIDE 
# Speaking of keywords...
<div class='level expert'/>

    @@@ruby
    class MyClass
      def def
        yield
      end
    end

    MyClass.new.def { p "wtf!!" }

!SLIDE bullets 
# Keywords in Python!
<div class='level beginner'/>

    @@@python
    >>> class A:
    ...  def def(self):
      File "<stdin>", line 2
        def def(self):
              ^
    SyntaxError: invalid syntax
    >>> exit

!SLIDE 
# Protected Vs Private??
## Are they different?
<div class='level beginner'/>

!SLIDE bullets incremental
# Protected deals with objects! 
<div class='level beginner'/>

* We can invoke another objects protected method!
* Must be in the same lineage (inheritance chain)

!SLIDE 
# But
# Do not believe me

!SLIDE 
## Protected methods
<div class='level beginner'/>
    @@@ruby
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

!SLIDE
# Modules - de-mystified
<div class='level expert'/>

    @@@ruby
    class Hanuman
      include Spiderman
      include Ironman
    end

!SLIDE
# Modules - de-mystified
<div class='level expert'/>

    @@@ruby
    module Spiderman
      def fly
        p 'Up up and away Spidey'
      end
    end

    module Ironman
      def fly
        p "Fire away Pepper"
      end
    end

!SLIDE commandline incremental
# Modules - de-mystified
<div class='level expert'/>

    $ irb> Hanuman.new.fly
    => "Fire away Pepper"

!SLIDE 
# Modules - de-mystified
<div class='level expert'/>

    @@@ruby
    module Ironman
      def fly
        p "Fire away Pepper"
        super
      end
    end

!SLIDE commandline incremental
# Modules - de-mystified
<div class='level expert'/>

    $ irb> Hanuman.new.fly
    => "Fire away Pepper"
       "Up up and away Spidey"

!SLIDE bullets 
# Modules - de-mystified
<div class='level expert'/>

    @@@ruby
    class Hanuman
      include Spiderman
      include Ironman
    end

* Meta-class inhertitance heirarchy is generated on the fly when a class is created
* Hanuman => Ironman => Spiderman

!SLIDE bullets 
# Modules - de-mystified
<div class='level expert'/>

    @@@ruby
    class Hanuman
      include Ironman
      include Spiderman
    end

* Meta-class inhertitance heirarchy is generated on the fly when a class is created
* Hanuman => Spiderman => Ironman

!SLIDE
# Super is super!
<div class='level beginner'/>

!SLIDE
# Super is super!
<div class='level beginner'/>

    @@@ruby
    class Base
      def foo
        p "Base: awesomness!!"
      end
    end
    
    class Derived < Base
      def foo(a, *b)
        super
        p a, b
      end
    end

    Derived.new.foo(1, 2)

!SLIDE
# Super is super!
<div class='level beginner'/>

    @@@ruby
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


!SLIDE
# Cherry-pick Module methods!
<div class='level expert'/>

    @@@ruby
    module Megatron
      def power
        p "Megatron's super strength"
      end

      def evil
        p 'Evil genius'
      end
    end

!SLIDE
# Cherry-pick Module methods!
<div class='level expert'/>

    @@@ruby
    class Hanuman
      include Megatron
    end

    Hanuman.new.power
    # => "Megatron's super strength"

    Hanuman.new.evil 
    # => "Evil genius"  # Oh no!

!SLIDE
# Cherry-pick Module methods!
<div class='level expert'/>

    @@@ruby
    class Hanuman
      def power
        Megatron.instance_method(:power).
                 bind(self).call
      end
    end

    Hanuman.new.power
    # => "Megatron's super strength"

    Hanuman.new.evil 
    # => undefined method `evil' for 
    # #<Hanuman:0x007fed7107bb40> 

!SLIDE
# That's all folks!

## @gautamrege
## @cloakedsoul
