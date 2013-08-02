def foo(l)
  puts "foo"
  l.call
  puts "bar"
end

a = lambda { return }
b = Proc.new { return }

foo a
puts "after foo"

puts "-----"
foo b
puts "after Proc foo"
