#Examing self via calls to puts in class and module definitions
class C
  puts "Just started class C:"
  puts self
  module M
    puts "Nested module C::M"
    puts self
  end
  puts "Back in the outer level of c:"
  puts self
end