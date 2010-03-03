1.One-to-One Associations
 
 belongs_to
 A belongs_to association sets up a one-to-one connection with another model, such that each instance of the declaring model “belongs to” one instance of the other model.
 
 class Order < AR::Base
   belongs_to :customer
 end
 
order=Order.all
[#<Order id: 1, order_date: "2010-03-02 15:42:37", customer_id: 1, created_at: "2010-03-02 15:42:47", updated_at: "2010-03-02 15:42:47">]
order.first.customer
Customer Columns (0.7ms)   SHOW FIELDS FROM `customers`
Customer Load (0.1ms)   SELECT * FROM `customers` WHERE (`customers`.`id` = 1) 
#<Customer id: 1, name: "Mahesh", created_at: "2010-03-02 15:40:03", updated_at: "2010-03-02 15:40:03">
 