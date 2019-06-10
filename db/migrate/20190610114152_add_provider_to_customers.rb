class AddProviderToCustomers < ActiveRecord::Migration[5.2]
  def change
  	add_column :customers, :provider, :string
  end
end
