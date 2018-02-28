class AddDietToDietField < ActiveRecord::Migration[5.1]
  def change
  	add_column :diet_fields, :diet_id, :integer

  end
end
