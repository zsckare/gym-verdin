class AddImageToExercise < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :imagen, :string
  end
end
