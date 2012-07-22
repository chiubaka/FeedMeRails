class ChangeTableNumberToTableIdInCustomer < ActiveRecord::Migration
  def change
    remove_column :customers, :table_number
    add_column :customers, :table_id, :integer
  end
end
