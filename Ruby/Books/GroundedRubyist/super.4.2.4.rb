#Using the super keyword to reach up one level in the lookup path
module M
  def report
    puts "report from module M"
  end
end
class C
  include M
  def report
    puts "report method from class c"
    super
    puts "Back from the super call"
  end
end