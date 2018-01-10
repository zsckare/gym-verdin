class AddDescriptionToExcercise < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :description, :string
  end
end
