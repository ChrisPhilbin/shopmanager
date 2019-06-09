class AddEmailToTeches < ActiveRecord::Migration[5.2]
  def change
  	add_column :teches, :email, :string
  end
end
