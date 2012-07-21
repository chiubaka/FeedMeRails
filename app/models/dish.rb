class Dish < ActiveRecord::Base
  attr_accessible :menu_id
  
  belongs_to :menu
  has_many :ratings
end
