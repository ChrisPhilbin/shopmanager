class AddCustomerCommentsToRepairs < ActiveRecord::Migration[5.2]
  def change
  	add_column :repairs, :customercomments, :text
  end
end
