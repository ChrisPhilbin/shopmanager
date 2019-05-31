class RenameUserIdToCustomerId < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cars, :user_id, :customer_id
  end
end
