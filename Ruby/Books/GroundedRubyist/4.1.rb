#Modules : The greatest strength of modules is that they help with program design and flexiblity.
#Modules encourage modular design program design that breaks large components into smaller ones and lets you mix and match object behaviours
module MyFirstModule
  def say_hello
    puts "hello"
  end
end
class ModuleTester
  include MyFirstModule
end