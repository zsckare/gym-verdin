class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.references :client, foreign_key: true
      t.references :coach, foreign_key: true
      t.string :details
      t.string :exercise

      t.timestamps
    end
  end
end
