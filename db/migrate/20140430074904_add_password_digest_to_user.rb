class AddPasswordDigestToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
  end
  def up
  	remove_column :users, :password
  end
end
