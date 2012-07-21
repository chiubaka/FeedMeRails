class Menu < ActiveRecord::Base
  attr_accessible :restaurant_id
  
  belongs_to :restaurant
  has_many :dishes
end
