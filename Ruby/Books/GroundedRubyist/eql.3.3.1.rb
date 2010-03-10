#The equal sign (=) in method names
class Ticket
  def initialize(venue,date)
    @venue=venue
    @date=date
  end
  def set_price(amount)
    @price=amount
  end
  def price
    @price
  end
#Ruby allows you to define methods that end with an equal sign (=). Let’s replace
#set_price with a method called price= (“price” plus an equal sign)
   def rate=(amount)
     @rate=amount
   end
end