class Multipler
def self.create_multiplier(n)
  define_method("times_#{n}") do |val|
   val * n
  end
 end
 10.times{|i| create_multiplier(i)}
end
c=Multipler.new
puts c.times_9(3)
