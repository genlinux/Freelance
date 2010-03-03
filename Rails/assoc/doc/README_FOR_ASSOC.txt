1.One-to-One Associations
 
belongs_to

A belongs_to association sets up a one-to-one connection with another model, such that each instance of the declaring model “belongs to” one instance of the other model.
 
class Order < ActiveRecord::Base
   belongs_to :customer
end
 
order=Order.all
[#<Order id: 1, order_date: "2010-03-02 15:42:37", customer_id: 1, created_at: "2010-03-02 15:42:47", updated_at: "2010-03-02 15:42:47">]

order.first.customer
Customer Columns (0.7ms)   SHOW FIELDS FROM `customers`
Customer Load (0.1ms)   SELECT * FROM `customers` WHERE (`customers`.`id` = 1) 
#<Customer id: 1, name: "Mahesh", created_at: "2010-03-02 15:40:03", updated_at: "2010-03-02 15:40:03">
 
has_one
 
A has_one association also sets up a one-to-one connection with another model, but with somewhat different semantics (and consequences). This association indicates that each instance of a model contains or possesses one instance of another model.
 
class Supplier < ActiveRecord::Base
  has_one :account
end
 
sup=Supplier.find 1
Supplier Load (0.4ms)   SELECT * FROM `suppliers` WHERE (`suppliers`.`id` = 1) 
#<Supplier id: 1, name: "Thillai", created_at: "2010-03-03 12:55:53", updated_at: "2010-03-03 12:55:53">

sup.account
Account Load (0.6ms)   SELECT * FROM `accounts` WHERE (`accounts`.supplier_id = 1) LIMIT 1
Account Columns (1.0ms)   SHOW FIELDS FROM `accounts`
#<Account id: 1, supplier_id: 1, account_number: nil, created_at: "2010-03-03 12:56:54", updated_at: "2010-03-03 12:56:54">

 