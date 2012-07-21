class AddProfilePicUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_pic_url, :string
  end
end
