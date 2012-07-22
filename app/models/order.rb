class Order < ActiveRecord::Base
  attr_accessible :customer_id
  has_many :orders
end
