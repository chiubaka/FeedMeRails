class Dish < ActiveRecord::Base
  attr_accessible :menu_id, :name, :price, :image_url, :description, :image
  
  belongs_to :menu
  has_many :ratings
  
  has_attached_file :image, :default_url => "default.jpeg",
  :styles => { :small => "160x160" }
  
end
