class CreateDietFields < ActiveRecord::Migration[5.1]
  def change
    create_table :diet_fields do |t|
      t.time :schedule
      t.text :description
      t.string :meal

      t.timestamps
    end
  end
end
