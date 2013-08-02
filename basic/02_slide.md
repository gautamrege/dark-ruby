!SLIDE center  
# Flip Flop Operator!
![Flip Flop](index.jpeg)

<div class='level expert' />

!SLIDE incremental
# Flip Flop Operator!
<div class='level expert' />

* A Stateful  If
* When the Range operator is used in a conditional statement it acts as a "flip - flop" operator

!SLIDE
# Flip Flop example
    @@@ ruby
    1.upto(10) do |i|
      puts i if (i == 3)..(i == 5)
    end

<div class='level expert' />
    
!SLIDE
# Flip Flop example
    @@@ ruby
    1.upto(10) do |i|
      puts i if (i == 3)..(i == 5)
    end

    =>3
    =>4
    =>5

<div class='level expert' />

!SLIDE incremental
# Why call it a Flip - Flop ??
* The flip-flop expression will evaluate to
    *  false until the first (left hand) expression is true.
    *  true until the right-hand expression evaluates to true. 
* It continues to evaluate to false until the left-hand expression evaluates to true again and then it will flip the other way.

<div class='level expert' />
