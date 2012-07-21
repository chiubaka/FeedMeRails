class Restaurant < ActiveRecord::Base
  attr_accessible :name
  
  has_many :customers
  has_one :menu
end
