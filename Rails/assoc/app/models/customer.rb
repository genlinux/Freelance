class Customer < ActiveRecord::Base
  has_many :orders, :dependent => :delete_all
end
