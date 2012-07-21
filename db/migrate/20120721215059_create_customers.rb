class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :table_number
      t.boolean :is_active

      t.timestamps
    end
  end
end
