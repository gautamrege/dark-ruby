!SLIDE center
# Presenting the star
![star](star.jpeg) 
#'*' - A Star Operator

<div class="level beginner" />

!SLIDE incremental
#  splat (\*) expander on objects #
    @@@ ruby
    Job = Struct.new(:name, :occupation)
    tom = Job.new("Tom", "Developer")
    name, occupation = *tom
    p name
    p occupation

<div class="level beginner" />

!SLIDE incremental
# Splat in block parameters #

    @@@ ruby
    h = { :one=>1, 'two'=>2, 3=>3}
    h.each {|*args| puts(args.inspect) } 

<div class="level beginner" />

!SLIDE incremental
# Splat in block parameters #

    @@@ ruby
    h = { :one=>1, 'two'=>2, 3=>3}
    h.each {|*args| puts(args.inspect) } 

    [["two", 2]]
    [[:one, 1]]
    [[3, 3]]

<div class="level beginner" />

!SLIDE incremental
#A single block can handle multiple types of input. 
![cool](cool.jpeg)
<div class="level beginner" />

!SLIDE incremental
# And some more fun  #

    @@@ ruby
    blk = ->(first, *middle, sec_last, last) do
        puts sec_last
    end
    blk.(1, 2, 3)
<div class="level beginner" />

!SLIDE incremental
# And some more fun  #

    @@@ ruby
    blk = ->(first, *middle, sec_last, last) do
        puts sec_last
    end
    blk.(1, 2, 3)

    => 2

<div class="level beginner" />

!SLIDE incremental
# Make Hash with * #

    @@@ ruby
    a=[1,2,3,4,5,6]
    h=Hash[*a]
    p h

    => {1=>2, 3=>4, 5=>6} 
<div class="level beginner" />

!SLIDE incremental
# * on Arrays #

    @@@ ruby
    [1,2,3] * 3

<div class="level expert" />

!SLIDE incremental
# * on Arrays #

    @@@ ruby
    [1,2,3] * 3

    => [1,2,3,1,2,3,1,2,3]

<div class="level expert" />

!SLIDE incremental
# And what happens now?
    @@@ ruby
    [1,2,3] * '%'

<div class="level expert" />

!SLIDE incremental
# And what happens now?
    @@@ ruby
    [1,2,3] * '%'

    => 1%2%3
    
<div class="level expert" />
