class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :proteins
      t.float :calories

      t.timestamps
    end
  end
end
