#Simplemethod
#def simple(param)
#  lvar="lvar with a value"
#  binding
#end
#b=simple(44)
#eval "puts param",b

#Class level method
class Simple
  def  initialize
    @ivar="ivar with a value"
  end
  def simple(param)
    lvar="lvar with a value"
    binding
  end
end
s=Simple.new
b=s.simple(99){"block value"}

eval "puts param",b
eval "puts lvar",b
eval "puts yield",b
eval "puts self",b
eval "puts @ivar",b
