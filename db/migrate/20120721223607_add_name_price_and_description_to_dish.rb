class AddNamePriceAndDescriptionToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :name, :string
    add_column :dishes, :price, :decimal
    add_column :dishes, :description, :text
    add_column :dishes, :image_url, :string
  end
end
