class Rating < ActiveRecord::Base
  attr_accessible :dish_id, :user_id, :value
  
  belongs_to :user
  belongs_to :dish
end
