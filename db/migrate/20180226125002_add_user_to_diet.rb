class AddUserToDiet < ActiveRecord::Migration[5.1]
  def change
  	add_column :diets, :user_id, :integer

  end
end
