class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :menu_id

      t.timestamps
    end
  end
end
