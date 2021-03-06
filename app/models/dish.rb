class Dish < ActiveRecord::Base
  attr_accessible :menu_id, :name, :price, :description, :image, :rating, :upvotes, :downvotes, :order_id
  
  belongs_to :menu
  belongs_to :order
  has_many :ratings
  
  has_attached_file :image, :default_url => "default.jpeg",
  :styles => { :small => "160x160" }
  
end
