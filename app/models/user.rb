class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :facebook_id
  has_many :customers
  has_many :ratings
  
  
end
