class CreateDiseaseSpecialties < ActiveRecord::Migration[7.2]
  def change
    create_table :disease_specialties do |t|
      t.references :disease, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
