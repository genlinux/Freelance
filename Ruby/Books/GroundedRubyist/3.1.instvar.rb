#An instance variable maintaining its value between method calls
class Person
  def set_name(string)
    puts "Setting person's name ..."
    @name=string
  end
end