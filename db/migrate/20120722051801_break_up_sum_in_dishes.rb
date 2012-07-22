class BreakUpSumInDishes < ActiveRecord::Migration
  def change
    remove_column :dishes, :rating
    add_column :dishes, :upvotes, :integer, :default => 0
    add_column :dishes, :downvotes, :integer, :default => 0
  end
end
