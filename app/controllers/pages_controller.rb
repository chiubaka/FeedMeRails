class PagesController < ApplicationController
  def home
    @menus = Menu.all
    @images = []
    
    @menus.each do |menu| 
	    menu.dishes.each do |dish|
	        @images << dish.image
	    end
	  end 
	  
	  
	  if restaurant_signed_in?
      redirect_to menu_path(current_restaurant.menu.id)
	  end
	      
  end
end
