class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.date :dob
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
