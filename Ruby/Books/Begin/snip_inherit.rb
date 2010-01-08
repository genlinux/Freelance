#This code has been taken from Peter Coopers Apress Beginning ruby from Novice Professional
#This will explains about basic inheritance
#Inheriting Pets
#Normal method
#class Cat
#  attr_accessor :name, :age, :gender, :color
#end

#class Dog
#  attr_accessor :name, :age, :gender, :color
#end

#class Snake
#  attr_accessor :name, :age, :gender, :color
#end

#Explanation
#Creating the classes in this way would miss out on one of the best features of
#oriented programming :inheritance
#Inheritance allows different classes to relate to one another and group concepts by their similarities

#Lets try with the clear code
class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
  def bark
  puts "Woof!"
  end
end

class Snake < Pet
#attributes that aren’t relevant to every animal
  attr_accessor :length
end

