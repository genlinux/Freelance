#Stack like module,                                             we’ll write a module that encapsulates the
#we will write a module that encapsulates the characteristic of being like a stack, or stack-like-ness
#a stack is a data structure that operates on the last in, first out (LIFO) principle
module Stacklike
  def stack
    @stack ||=[]
  end
  def add_to_stack(obj)
    stack.push(obj)
  end
  def take_from_stack
    stack.pop
  end
end
class Stack
  include Stacklike
end
