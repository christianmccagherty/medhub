class CreateJoinTableSpecialtiesDiseases < ActiveRecord::Migration[7.1]
  def change
    create_join_table :specialties, :diseases do |t|
      # t.index [:specialty_id, :disease_id]
      # t.index [:disease_id, :specialty_id]
    end
  end
end
