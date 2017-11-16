class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.references :discipline, foreign_key: true
      t.string :user
      t.string :password

      t.timestamps
    end
  end
end
