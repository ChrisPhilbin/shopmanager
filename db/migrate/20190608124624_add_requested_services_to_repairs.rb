class AddRequestedServicesToRepairs < ActiveRecord::Migration[5.2]
  def change
  	add_column :repairs, :requestedservices, :string
  end
end
