#Normal Method
#def method
#  puts "at top"
#  
#  puts "at end"
#end
#
#puts "before call"
#
#method
#
#puts "after call"

#With Proc
#def proc_return_method
#  puts "at top"
#  
#  pr=Proc.new{return}
#  pr.call
#  
#  puts "at end"
#end
#puts "before call"
#
#proc_return_method
#
#puts "after call"

#With Proc
def proc_return_method
  puts "at top"
  
  pr=lambda{return}
  pr.call
  
  puts "at end"
end
puts "before call"

proc_return_method

puts "after call"
