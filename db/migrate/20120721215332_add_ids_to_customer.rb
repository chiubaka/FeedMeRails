class AddIdsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :user_id, :integer
    add_column :customers, :restaurant_id, :integer
  end
end
