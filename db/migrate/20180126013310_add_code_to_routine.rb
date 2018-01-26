class AddCodeToRoutine < ActiveRecord::Migration[5.0]
  def change
    add_column :routines, :code, :string
    add_column :routines, :exercise_id, :string
  end
end
