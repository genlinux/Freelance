#Private access method using dog example
class Dog
  attr_reader :age, :dog_years
  def dog_years=(years)
    @dog_years=years
  end
  
  def age=(years)
    @age=years
    puts "#{self}"
    self.dog_years=years * 7
  end
  
  private :dog_years=
end