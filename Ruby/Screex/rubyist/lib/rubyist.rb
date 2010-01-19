#Simple celsius program
class Temperature
  
  puts "Please type the temperature for conversion"
  def conversion(celsius)
    fahrenheit = (celsius.to_i * 9/5) + 32
    puts "The result is : " + "#{fahrenheit}"
  end
end
