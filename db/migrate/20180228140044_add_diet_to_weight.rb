class AddDietToWeight < ActiveRecord::Migration[5.1]
  def change
  	add_column :weights, :diet_id, :integer

  end
end
