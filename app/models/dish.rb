class Dish < ActiveRecord::Base
  attr_accessible :menu_id, :name, :price, :description, :image, :rating, :upvotes, :downvotes
  
  belongs_to :menu
  has_many :ratings
  
  has_attached_file :image, :default_url => "default.jpeg",
  :styles => { :small => "160x160" }
  
  def add_rating(a_rating)  
    a_rating.value == 1 ? upvotes += 1 : downvotes += 1
  end
end
