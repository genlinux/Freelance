#Singleton method
class Ticket
  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
end
