class AddClientReferencesToAssessment < ActiveRecord::Migration[5.0]
  def change
    add_reference :assessments, :client, foreign_key: true
  end
end
