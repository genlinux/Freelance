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

2.one-to-many

has_many

A has_many association indicates a one-to-many connection with another model. You’ll often find this association on the “other side” of a belongs_to association. This association indicates that each instance of the model has zero or more instances of another model.

class Customer < ActiveRecord::Base
  has_many :orders
end

c=Customer.find 1
Customer Load (0.2ms)   SELECT * FROM `customers` WHERE (`customers`.`id` = 1) 
#<Customer id: 1, name: "Mahesh", created_at: "2010-03-02 15:40:03", updated_at: "2010-03-02 15:40:03">

c.orders
Order Load (0.4ms)   SELECT * FROM `orders` WHERE (`orders`.customer_id = 1) 
Order Columns (0.6ms)   SHOW FIELDS FROM `orders`
[#<Order id: 1, order_date: "2010-03-02 15:42:37", customer_id: 1, created_at: "2010-03-02 15:42:47", updated_at: "2010-03-02 15:42:47">, #<Order id: 3, order_date: nil, customer_id: 1, created_at: "2010-03-03 13:11:20", updated_at: "2010-03-03 13:12:07">]

has_many :through 

A has_many :through association is often used to set up a many-to-many connection with another model. This association indicates that the declaring model can be matched with zero or more instances of another model by proceeding through a third model. For example, consider a medical practice where patients make appointments to see physicians.

class Physician < ActiveRecord::Base 
  has_many :appointments  
  has_many :patients, :through => :appointments 
end 

class Appointment < ActiveRecord::Base 
  belongs_to :physician  
  belongs_to :patient 
end 

class Patient < ActiveRecord::Base 
  has_many :appointments  
  has_many :physicians, :through => :appointments 
end 

@pat=Patient.find 1

Patient Columns (0.7ms)   SHOW FIELDS FROM `patients`
Patient Load (0.2ms)   SELECT * FROM `patients` WHERE (`patients`.`id` = 1) 

#<Patient id: 1, name: "Thillai", created_at: "2010-03-04 09:57:43", updated_at: "2010-03-04 09:57:43">

@pat.physicians

Physician Load (0.4ms)   SELECT `physicians`.* FROM `physicians` INNER JOIN `appointments` ON `physicians`.id = `appointments`.physician_id WHERE ((`appointments`.patient_id = 1)) 
[#<Physician id: 1, name: "Kamesh", created_at: "2010-03-04 10:01:27", updated_at: "2010-03-04 10:01:27">, #<Physician id: 2, name: "Lenin", created_at: "2010-03-04 10:01:35", updated_at: "2010-03-04 10:01:35">]

@phy.patients

Patient Load (0.2ms)   SELECT `patients`.* FROM `patients` INNER JOIN `appointments` ON `patients`.id = `appointments`.patient_id WHERE ((`appointments`.physician_id = 1)) 
[#<Patient id: 1, name: "Thillai", created_at: "2010-03-04 09:57:43", updated_at: "2010-03-04 09:57:43">]

Polymorphic Associations

A slightly more advanced twist on associations is the polymorphic association. With polymorphic associations, a model can belong to more than one other model, on a single association
 