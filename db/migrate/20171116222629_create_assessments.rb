class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.string :points
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
