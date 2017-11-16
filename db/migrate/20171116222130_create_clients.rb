class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :address
      t.references :coach, foreign_key: true
      t.string :user
      t.string :password

      t.timestamps
    end
  end
end
