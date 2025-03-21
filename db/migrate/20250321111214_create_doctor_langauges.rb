class CreateDoctorLangauges < ActiveRecord::Migration[7.1]
  def change
    create_table :doctor_langauges do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :langauge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
