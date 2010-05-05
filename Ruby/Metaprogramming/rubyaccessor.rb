module Accessor
 def my_attr_accessor(name)
 puts "get #{name}"
 end
end
class Example
extend Accessor
my_attr_accessor :var
end
ex = Example.new
ex.var =99
puts ex.var
