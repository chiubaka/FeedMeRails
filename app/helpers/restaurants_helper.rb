module RestaurantsHelper
  def resource_name
      :restaurant
  end

  def resource
      @resource ||= Restaurant.new
  end

  def devise_mapping
      @devise_mapping ||= Devise.mappings[:restaurant]
  end
end
