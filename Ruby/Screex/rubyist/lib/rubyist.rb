#Simple celsius program
class Temperature
  
  puts "Please type the temperature for conversion"
  celsius = gets().to_i
  
  def self.conversion(celsius)
    fahrenheit = (celsius * 9/5) + 32
    puts "The result is : " + "#{fahrenheit}"
  end
  puts conversion(celsius)
end
