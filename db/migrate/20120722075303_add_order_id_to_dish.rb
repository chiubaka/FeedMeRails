class AddOrderIdToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :order_id, :integer
  end
end
