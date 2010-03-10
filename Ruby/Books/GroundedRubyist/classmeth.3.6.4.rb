#Singleton methods with example
class Temperature
  def Temperature.c2f(f)
    f*9.0/5 +32
  end
  def Temperature.f2c(c)
    (c-32) * 5 /9.0
  end
end
puts Temperature.c2f(100)