class AddOpenToRepairs < ActiveRecord::Migration[5.2]
  def change
  	add_column :repairs, :open, :boolean, :default => true
  end
end
