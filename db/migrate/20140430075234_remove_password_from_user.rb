class RemovePasswordFromUser < ActiveRecord::Migration

	def self.up
		remove_column :users, :password
	end

end
