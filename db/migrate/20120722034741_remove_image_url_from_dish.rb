class RemoveImageUrlFromDish < ActiveRecord::Migration
  def change
    remove_column :dishes, :image_url
  end
end
