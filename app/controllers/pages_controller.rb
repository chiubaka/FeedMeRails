class PagesController < ApplicationController
  def home
    @menus = Menu.all
    @images = []
    
    @menus.each do |menu| 
	    menu.dishes.each do |dish|
	        @images << dish.image
	    end
	  end 

  end
end
