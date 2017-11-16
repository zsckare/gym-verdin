class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
