class CreateRoutines < ActiveRecord::Migration[5.0]
  def change
    create_table :routines do |t|
      t.references :client, foreign_key: true
      t.string :exercise
      t.string :category

      t.timestamps
    end
  end
end
