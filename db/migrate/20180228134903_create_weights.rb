class CreateWeights < ActiveRecord::Migration[5.1]
  def change
    create_table :weights do |t|
      t.float :value
      t.date :weight_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
