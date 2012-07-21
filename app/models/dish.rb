class Dish < ActiveRecord::Base
  attr_accessible :menu_id, :name, :price, :image_url, :description
  
  belongs_to :menu
  has_many :ratings
end
