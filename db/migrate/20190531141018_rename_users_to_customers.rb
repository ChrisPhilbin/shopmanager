class RenameUsersToCustomers < ActiveRecord::Migration[5.2]
  def change
  	rename_table :users, :customers
  end
end
