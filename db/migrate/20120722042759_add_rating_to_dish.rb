class AddRatingToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :rating, :integer, :default => 0
  end
end
