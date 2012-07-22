class AddIsFlaggedToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :is_flagged, :boolean, :default => false
  end
end
