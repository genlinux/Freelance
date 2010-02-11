#Demonstration module inclusion in a class
module M
  def report
    "Module included in class"
  end
end
class A
  include M
end
class C < A
end