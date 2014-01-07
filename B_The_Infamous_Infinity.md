# The Infamous Infinity

```ruby
irb> 1/0
# => ZeroDivisionError: divided by 0

irb> 1.0/0
# => Infinity

irb> 1.0/0 == 1/0.0  
# => true

irb> Infinity
=> NameError: uninitialized constant Infinity 
```

Infinity is defined as a constant in the class Float. But it doesn't show up as Float when you divide by zero!
Infinity is also interesting because now you can compare it with other and even use it in a range! 

```
irb> inf = 1.0/0
irb> inf.class
# => Float

irb> inf > 3 
3 > Float::INFINITY 
# => false 

irb>  (1..inf).include?(100000000000000)
# => true 
```

