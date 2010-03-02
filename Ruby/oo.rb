puts "Top Level"
puts "self is 0  #{self}"
class C
     puts "Class definition block:"
     puts "self is 1 #self"
     def self.x
         puts "Class method C.x:"
         puts "self is 2  #{self}"
     end
     def m
         puts "Instance method c#m:"
         puts "self is 3 #{self}"
     end
end
