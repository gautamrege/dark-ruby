!SLIDE center
# INFINITY #
<div class='level beginner' />
![inf](infinity.jpg)

!SLIDE commandline incremental
# Infinity in Ruby ?? 
<div class='level beginner' />

    $ irb> 1.0/0.0
    => Infinity

    $ irb> inf = 1/0.0
    => Infinity 

!SLIDE commandline incremental
# Infinity in Ruby ??  #
<div class='level expert' />

    $ irb> inf.class
    => Float

    $ irb> Float::INFINITY
    => Infinity 

    $ 3 > Float::INFINITY 
    => false 

!SLIDE commandline incremental
# Infinity as a range object? #
<div class='level beginner' />

    $ irb>  inf=1.0/0.0
     => Infinity 

    $ irb>  (1..inf).include?(100000000000000)
    => true 

    $ irb> (-inf..inf).include?(-100000000000000)
    => true 

!SLIDE commandline incremental 
# Catches #
![catch](catch.jpeg)

    $ irb> 1/0
    => ZeroDivisionError: divided by 0

    $ irb> 1.0/0 == 1/0.0  
    => true 

<div class='level expert' />

!SLIDE center  
# Base Jumping
![base](basejumping_small.jpg)

!SLIDE center  
<div class='level beginner' />
![base](base.jpg)

!SLIDE commandline incremental
# to_s with base
<div class='level beginner' />
    @@@ ruby
    $ irb> 12345.to_s(2)
    => "11000000111001"  # => Binary

    $ irb> 12345.to_s(8)
    => "30071"           # => Octal

    $ irb> 12345.to_s(16)
    => "3039"            # => Hexadecimal

!SLIDE commandline incremental
# to_s with base
<div class='level expert' />

    $ irb> 12345.to_s(12)
    => "7189" 

    $ irb> 12345.to_s(36)
    => "9ix"      # That is an actual number
 
!SLIDE incremental
# Really Know to_i ? #
<div class='level beginner' />

* Operates on strings to convert to fixnum
* Default base 10
* Can be used for other bases upto 36 

!SLIDE commandline incremental
# to_i Examples #
<div class='level beginner' />
    @@@ ruby
    $ irb> "ab".to_i(12)
    => 131 

    $ irb>"1010101".to_i(2)
    => 85 

    $ irb>"ff".to_i(16)
    => 255 

    $ irb> "9ix".to_i(36)
    => 12345 

!SLIDE commandline incremental
![catch](catch.jpeg)
# Catches #
   
    @@@ ruby
    $ irb> "c123".to_i(12)
    => 0 

    $ irb> "abc123".to_i(12)
    => 131 

<div class='level beginner' />
