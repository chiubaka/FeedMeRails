class Customer < ActiveRecord::Base
  attr_accessible :is_active, :table_number
  
  belongs_to :restaurant
  belongs_to :user
  
end
