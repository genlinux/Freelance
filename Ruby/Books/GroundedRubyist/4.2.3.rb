#Mixing in two modules with a same-named method defined
module M
  def report
    puts "Method module in M"
  end
end
module N
  def report
    puts "Method module in N"
  end
end
class C
  include M
  include N
end