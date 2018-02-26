class CreateDiets < ActiveRecord::Migration[5.1]
  def change
    create_table :diets do |t|
      t.date :begin_date
      t.date :end_date
      t.float :weight
      t.float :height
      t.float :ideal_weight

      t.timestamps
    end
  end
end
