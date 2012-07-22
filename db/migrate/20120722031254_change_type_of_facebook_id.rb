class ChangeTypeOfFacebookId < ActiveRecord::Migration
  def change
    remove_column :users, :facebook_id
    add_column :users, :facebook_id, :string
  end
end
