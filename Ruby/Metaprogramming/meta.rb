class Multipler
  define_method(:times_2) do |val|
   val * 2
  end
end
c=Multipler.new
puts c.times_2(4)
