class ApplicationController < ActionController::Base
  protect_from_forgery

  def stored_location_for(resource)
    nil
  end

  def after_sign_in_path_for(resource)
    current_restaurant.menu = Menu.create(restaurant_id: current_restaurant.id) unless current_restaurant.menu
    menu_path(current_restaurant.menu.id)
  end
end
