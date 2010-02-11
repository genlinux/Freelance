#Two same-named methods on a single search path
module Interest
  def calulate_interest
    puts "Place holder"
  end
end
class BankAccount
  include Interest
  def calulate_interest
    puts "Place holder other than me"
  end
end